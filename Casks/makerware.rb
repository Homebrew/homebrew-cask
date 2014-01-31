class Makerware < Cask
  url 'https://s3.amazonaws.com/downloads.makerbot.com/makerware/MakerWare%20Bundle%20of%20Awesome%202.4.1.35.dmg'
  homepage 'http://www.makerbot.com/makerware/'
  version '2.4.1.35'
  sha1 'c525f49afa312f4f936d7f5181480b4a68acb7e2'
  install 'MakerWare Bundle of Awesome 2.4.1.35.pkg'
  uninstall :pkgutil => 'com.makerbot.*'
end
