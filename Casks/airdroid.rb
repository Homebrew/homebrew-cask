cask 'airdroid' do
  version '3.5.1.0'
  sha256 '36ed5e7838287e34856937188e349ba87bc8ab64e5e4e632398f1e9f748c18bc'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
