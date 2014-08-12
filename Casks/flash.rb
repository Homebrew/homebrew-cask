class Flash < Cask
  version '14.0.0.145'
  sha256 'c0c13f43692530cadcd8aab5552fa9f235d45d793d6feb820b95ac948155dce3'

  url 'https://download.macromedia.com/pub/flashplayer/installers/archive/fp_14.0.0.145_archive.zip'
  homepage 'http://get.adobe.com/flashplayer/'

  nested_container 'fp_14.0.0.145_archive/14_0_r0_145/flashplayer14_0r0_145_mac.dmg'
  install 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :files => '/Library/Internet Plug-Ins/Flash Player.plugin'
end
