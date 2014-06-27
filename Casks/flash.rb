class Flash < Cask
  version '14.0.0.125'
  sha256 '30fe1064b2b4864afd5adf26c08981c8d5351a507fbcc3fc5f2bb6ef7e352384'

  url 'https://download.macromedia.com/pub/flashplayer/installers/archive/fp_14.0.0.125_archive.zip'
  homepage 'http://get.adobe.com/flashplayer/'

  nested_container 'fp_14.0.0.125_archive/14_0_r0_125/flashplayer14_0r0_125_mac.dmg'
  install 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :files => '/Library/Internet Plug-Ins/Flash Player.plugin'
end
