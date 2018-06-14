cask 'airdroid' do
  version '3.6.3.1'
  sha256 '3010932cd20aed546dfe9b324e7a56f4980f10c53de45fa4841b89aafb716c2b'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
