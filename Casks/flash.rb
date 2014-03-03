class Flash < Cask
  url 'http://download.macromedia.com/pub/flashplayer/installers/archive/fp_12.0.0.44_archive.zip'
  homepage 'http://get.adobe.com/flashplayer/'
  version '12.0.44'
  sha256 '8ccad1ea07f0c774f21d3a4fcfec777b27b04b6efa9056cb581e7aad9ab1429c'
  nested_container 'fp_12.0.0.44_archive/12_0_r0_44/flashplayer12_0r0_44_mac.dmg'
  install 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :files => '/Library/Internet Plug-Ins/Flash Player.plugin'
end
