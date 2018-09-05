cask 'biba' do
  version '3.14.3975'
  sha256 '50e5d8b47d018867f424c75419921f4c1eb14d061f180a6481be9931b4fef281'

  # amazonaws.com/downloads.biba.com was verified as official when first introduced to the cask
  url "https://s3-us-west-1.amazonaws.com/downloads.biba.com/builds/Biba-OSX-#{version}.dmg"
  appcast 'https://s3-us-west-1.amazonaws.com/downloads.biba.com/appcast/mac'
  name 'Biba'
  homepage 'http://www.biba.com/'

  app 'Biba.app'
end
