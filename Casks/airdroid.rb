cask 'airdroid' do
  version '3.6.3.0'
  sha256 '3d23d7e711243322ed545badd60e6e1ca40d0ca97cb435fb281c60cbf7ec56c9'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
