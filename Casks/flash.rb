class Flash < Cask
  url 'http://download.macromedia.com/pub/flashplayer/installers/archive/fp_13.0.0.206_archive.zip'
  homepage 'http://get.adobe.com/flashplayer/'
  version '13.0.0.206'
  sha256 '7fb0d1aac9e27e074c609c3088f7294b51c355ccef7913a7d5360e09a05d040d'
  nested_container 'fp_13.0.0.206_archive/13_0_r0_206/flashplayer13_0r0_206_mac.dmg'
  install 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :files => '/Library/Internet Plug-Ins/Flash Player.plugin'
end
