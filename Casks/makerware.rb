class Makerware < Cask
  url 'http://s3.amazonaws.com/downloads.makerbot.com/makerware/MakerWare%20Bundle%20of%20Awesome%202.3.3.42.dmg'
  homepage 'http://www.makerbot.com/makerware/'
  version '2.3.3.42'
  sha1 'a93f20c599cf1c4cf69161063401bde332dacd44'
  install 'MakerWare Bundle of Awesome 2.3.3.42.pkg'
  uninstall :pkgutil => 'com.makerbot.*'
end
