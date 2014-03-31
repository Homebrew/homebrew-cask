class Flash < Cask
  url 'http://download.macromedia.com/pub/flashplayer/installers/archive/fp_12.0.0.77_archive.zip'
  homepage 'http://get.adobe.com/flashplayer/'
  version '12.0.77'
  sha256 '124cfb10147a3bc1382a888610c9ec6fde0440bf9ca0331be53ee5ca7939bb3a'
  nested_container 'fp_12.0.0.77_archive/12_0_r0_77/flashplayer12_0r0_77_mac.dmg'
  install 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :files => '/Library/Internet Plug-Ins/Flash Player.plugin'
end
