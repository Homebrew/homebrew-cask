cask :v1 => 'diskmaker-x' do
  version '5'
  sha256 'e7227ce59fee42cca395ec2db7f07b9f809492c4e02a0ad53d82deec5d77ecfe'

  url "http://diskmakerx.com/downloads/DiskMaker_X_#{version}.dmg"
  name 'DiskMaker X'
  homepage 'http://diskmakerx.com/'
  license :gratis

  app "DiskMaker X #{version}.app"
end
