class Flash < Cask
  url 'http://download.macromedia.com/pub/flashplayer/installers/archive/fp_13.0.0.201_archive.zip'
  homepage 'http://get.adobe.com/flashplayer/'
  version '13.0.0.201'
  sha256 'bf79c47bf35380556c808f1aa8ade3f6e17f89ee98290c17d4f6227a9bb9e084'
  nested_container 'fp_13.0.0.201_archive/13_0_r0_201/flashplayer13_0r0_201_mac.dmg'
  install 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :files => '/Library/Internet Plug-Ins/Flash Player.plugin'
end
