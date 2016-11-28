cask 'airdroid' do
  version '3.3.5.0'
  sha256 '20c3b9a7f1009ce5057ef24c61097ee5376f4c368c3416c266ca691aa735c2e1'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
