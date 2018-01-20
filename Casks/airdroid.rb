cask 'airdroid' do
  version '3.6.0.0'
  sha256 'a32117be6cd3a6fad5004fd32988d52c7ed69f88cb09196f957389afe6d1e901'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
