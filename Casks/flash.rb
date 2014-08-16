class Flash < Cask
  version '14.0.0.176'
  sha256 'c515805c2c1f176015425a4f6a0f70a91ab97dfc4f103eb0d2ca08c5300844d3'

  url 'http://fpdownload.macromedia.com/get/flashplayer/current/licensing/mac/install_flash_player_14_osx_pkg.dmg'
  homepage 'https://www.adobe.com/products/flashplayer/distribution3.html'

  install 'Install Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :files => '/Library/Internet Plug-Ins/Flash Player.plugin'
end
