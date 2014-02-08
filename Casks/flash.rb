class Flash < Cask
  url 'http://download.macromedia.com/pub/flashplayer/installers/archive/fp_12.0.0.44_archive.zip'
  homepage 'http://get.adobe.com/flashplayer/'
  version '12.0.44'
  sha1 '164f77db93028acc7c1642c539020cc31f1848f2'
  nested_container 'fp_12.0.0.44_archive/12_0_r0_44/flashplayer12_0r0_44_mac.dmg'
  install 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :files => '/Library/Internet Plug-Ins/Flash Player.plugin'
end
