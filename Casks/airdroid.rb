cask 'airdroid' do
  version '3.4.0.0'
  sha256 '06f58f86309fe9d34ca94063ccb5445b08b7487e5651f90984ddfcb47ce5bcee'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
