cask 'airdroid' do
  version '3.4.2.0'
  sha256 '22ba131afb7c5b8c45cdee6f4d65a5244999b4dfb8e8a96533a2348bae1bc8dc'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
