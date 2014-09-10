class Flash < Cask
  version '15.0.0.152'
  sha256 'dfd22c6f5cc42b8c4dedf1214321d982d32bb7f7969a674463c4b13e55ceb2d4'

  url 'http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_15_osx_pkg.dmg'
  homepage 'https://www.adobe.com/products/flashplayer/distribution3.html'

  pkg 'Install Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :files => '/Library/Internet Plug-Ins/Flash Player.plugin'
end
