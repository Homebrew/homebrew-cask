class Flash < Cask
  url 'http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_12_osx.dmg'
  homepage 'http://get.adobe.com/flashplayer/'
  version '12'
  no_checksum
  install 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :files => '/Library/Internet Plug-Ins/Flash Player.plugin'
end
