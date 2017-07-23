cask 'airdroid' do
  version '3.5.0.0'
  sha256 '5713872f3b61a542eed40ba7474e100bf24e8a2016acbb0ae3869e0b7e5a3112'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
