class Flash < Cask
  url 'http://download.macromedia.com/pub/flashplayer/installers/archive/fp_13.0.0.214_archive.zip'
  homepage 'http://get.adobe.com/flashplayer/'
  version '13.0.0.214'
  sha256 '988bc8e95eb2b783857c652fa17a4992e8e566eeb0333661804dbfce2e813ad5'
  nested_container 'fp_13.0.0.214_archive/13_0_r0_214/flashplayer13_0r0_182_mac.dmg'
  install 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :files => '/Library/Internet Plug-Ins/Flash Player.plugin'
end
