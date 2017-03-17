cask 'airdroid' do
  version '3.4.1.0'
  sha256 '9691ab3e83c4167f76dcf5c9b6b8993f425f34ff4fd317f3b632168ebcfc4515'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
