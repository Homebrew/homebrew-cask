class Makerware < Cask
  url 'https://s3.amazonaws.com/downloads.makerbot.com/makerware/MakerWare%20Bundle%20of%20Awesome%202.4.0.22.dmg'
  homepage 'http://www.makerbot.com/makerware/'
  version '2.4.0.22'
  sha1 '9be2aa99b53db999f4fbc8fa05f10603dec5934c'
  install 'MakerWare Bundle of Awesome 2.4.0.22.pkg'
  uninstall :pkgutil => 'com.makerbot.*'
end
