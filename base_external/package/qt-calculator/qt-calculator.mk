
##############################################################
#
# AESD-FINAL
#
# Author: Xiang-Guan
#
##############################################################


QT_CALCULATOR_VERSION = 1.0
QT_CALCULATOR_SITE = $(BR2_EXTERNAL_BRTEMPLATE_PATH)/package/qt-calculator
QT_CALCULATOR_SITE_METHOD = local
QT_CALCULATOR_DEPENDENCIES = qt5base

define QT_CALCULATOR_CONFIGURE_CMDS
	(cd $(@D)/app; $(QT5_QMAKE))
endef

define QT_CALCULATOR_BUILD_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/app
endef

define QT_CALCULATOR_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/app/qt-calculator $(TARGET_DIR)/usr/bin/qt-calculator
endef

$(eval $(generic-package))
