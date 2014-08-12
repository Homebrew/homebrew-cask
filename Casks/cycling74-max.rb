class Cycling74Max < Cask
  version '6.1.7-140421'
  sha256 'deb3070e0161e074c7ee91861e06cfeec2c1dc85eb715e476797d026821c32c9'

  url 'https://akiaj5esl75o5wbdcv2a-maxmspjitter.s3.amazonaws.com/Max617_140421.dmg'
  homepage 'http://cycling74.com'

  install 'Max 6.1 Installer.pkg'
  uninstall :pkgutil => 'com.cycling74.Max*',
            :files   => '/Applications/Max 6.1'
end
