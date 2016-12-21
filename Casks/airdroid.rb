cask 'airdroid' do
  version '3.3.5.3'
  sha256 '325b282641410e2f7d62ca70d03a1d1de3c31519d3660cfd1e501eda596d8286'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
