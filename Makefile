export TARGET_CODESIGN_FLAGS="-Ssign.plist"
export ARCHS = arm64 arm64e
export TARGET=iphone:clang:latest:7.0
GO_EASY_ON_ME=1

include $(THEOS)/makefiles/common.mk


#THEOS_SCHEMA = schema1
ipainstaller_CFLAGS = -Wno-module-import-in-extern-c
TOOL_NAME = ipainstaller
ipainstaller_FILES = \
					ZipArchive/minizip/ioapi.c \
					ZipArchive/minizip/mztools.c \
					ZipArchive/minizip/unzip.c \
					ZipArchive/minizip/zip.c \
					ZipArchive/ZipArchive.mm \
					UIDevice-Capabilities/UIDevice-Capabilities.m \
					main.mm
ipainstaller_FRAMEWORKS = UIKit Foundation ImageIO CoreGraphics
ipainstaller_PRIVATE_FRAMEWORKS = MobileCoreServices
ipainstaller_LDFLAGS = -lz
# ipainstaller_INSTALL_PATH = /var/jb/usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk

VERSION.INC_BUILD_NUMBER = 1

