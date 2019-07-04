cask 'fman' do
  version '1.6.4'
  sha256 'e2cffda7e96fdb43b6eeef9235aa075487243bb689ebc8ce886d417cf5f73cf0'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
