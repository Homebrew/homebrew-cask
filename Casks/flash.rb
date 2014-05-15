class Flash < Cask
  url 'http://download.macromedia.com/pub/flashplayer/installers/archive/fp_13.0.0.214_archive.zip'
  homepage 'http://get.adobe.com/flashplayer/'
  version '13.0.0.214'
  sha256 'a63f01f353565bbc39bc8591f6b6508ee4bda4e0139ded8e58f2a040bc1abc76'
  nested_container 'fp_13.0.0.214_archive/13_0_r0_214/flashplayer13_0r0_214_mac.dmg'
  install 'Install Adobe Flash Player.app/Contents/Resources/Adobe Flash Player.pkg'
  uninstall :pkgutil => 'com.adobe.pkg.FlashPlayer',
            :files => '/Library/Internet Plug-Ins/Flash Player.plugin'
end
