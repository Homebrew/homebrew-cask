cask 'airdroid' do
  version '3.6.2.0'
  sha256 '0370fe1c2946c7edd442040e0c2699b01f5e814216d7fdf86164153607ffb6ff'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
