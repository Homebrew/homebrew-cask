class LogitechControlCenter < Cask
  url 'http://www.logitech.com/pub/techsupport/mouse/mac/lcc3.9.0.60.zip'
  homepage 'http://www.logitech.com'
  version '3.9.0.60'
  sha256 '1eab6118dc5ad0b3c790b9132b5968050dab0117b07d8f338c471aff00078df1'
  install 'LCC Installer.app/Contents/Resources/Logitech Control Center.mpkg'
  uninstall 'LCC Installer.app/Contents/Resources/LCC Uninstaller Tool'
end
