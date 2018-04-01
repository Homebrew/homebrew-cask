cask 'airdroid' do
  version '3.6.1.0'
  sha256 '2f660e8d9159b8041dce81737a1b02c864a2918dd9f7eb49c60eb9b9f5550320'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
