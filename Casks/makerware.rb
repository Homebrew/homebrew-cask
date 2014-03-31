class Makerware < Cask
  url 'https://s3.amazonaws.com/downloads.makerbot.com/makerware/MakerWare%20Bundle%20of%20Awesome%202.4.1.35.dmg'
  homepage 'http://www.makerbot.com/makerware/'
  version '2.4.1.35'
  sha256 'bb01a6b2b2f46d8e1ec9522fe3f914646c39550f10d9fde8f0e830f670e933a8'
  install 'MakerWare Bundle of Awesome 2.4.1.35.pkg'
  uninstall :pkgutil => 'com.makerbot.*'
end
