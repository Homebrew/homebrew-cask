class Flash < Cask
  url 'http://download.macromedia.com/pub/flashplayer/installers/archive/fp_13.0.0.182_archive.zip'
  homepage 'http://get.adobe.com/flashplayer/'
  version '13.0.0.182'
  sha256 'd35b476eb689e5c6358a6b8821ef6b4302d28a2e0ada33a2faf710f8dca274bd'
  nested_container 'fp_13.0.0.182_archive/13_0_r0_182/flashplayer13_0r0_182_mac.dmg'
  install 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :files => '/Library/Internet Plug-Ins/Flash Player.plugin'
end
