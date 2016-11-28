cask 'airdroid' do
  version '3.3.5.1'
  sha256 '6e2e6e988071b4eec64ddc1e3e30c7f372fe31554f35a3f36d01984fbc6c33cd'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
