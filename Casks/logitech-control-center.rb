class LogitechControlCenter < Cask
  url 'http://www.logitech.com/pub/techsupport/mouse/mac/lcc3.9.0.60.zip'
  homepage 'http://www.logitech.com'
  version '3.9.0.60'
  sha1 '777c039b7d3d0e60a047ee1a9074eb46abb042f7'
  install 'LCC Installer.app/Contents/Resources/Logitech Control Center.mpkg'
  uninstall 'LCC Installer.app/Contents/Resources/LCC Uninstaller Tool'
end
