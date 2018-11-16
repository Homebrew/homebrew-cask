cask 'airdroid' do
  version '3.6.4.0'
  sha256 'ff8326016e22f89016bbcec84991ff3152a0495ef12a520b6442802286e7d892'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
