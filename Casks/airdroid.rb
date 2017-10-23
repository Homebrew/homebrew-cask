cask 'airdroid' do
  version '3.6.0.0'
  sha256 'fe773c633739bf8d512623828dc59f94a6c655fcee69e546ed1623ba34e5da87'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
