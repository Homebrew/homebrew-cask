class Flash < Cask
  url 'http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_11_osx.dmg'
  homepage 'http://get.adobe.com/flashplayer/'
  version '11'
  no_checksum
  install 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer'
end
