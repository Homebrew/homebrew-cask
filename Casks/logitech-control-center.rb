class LogitechControlCenter < Cask
  url 'http://www.logitech.com/pub/techsupport/mouse/mac/lcc370.zip'
  homepage 'http://www.logitech.com'
  version '3.70'
  sha1 'b5a1112391b3b3e86aee07e9635b0f3df9b69fe8'
  install 'LCC Installer.app/Contents/Resources/Logitech Control Center.mpkg'
  uninstall 'LCC Installer.app/Contents/Resources/LCC Uninstaller Tool'
end
