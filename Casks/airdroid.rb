cask 'airdroid' do
  version '3.5.2.0'
  sha256 'eb79c44c7fb7ef509910ea106c6587059d018f7ce1ef7e0c22a365e7a869d69e'

  # s3.amazonaws.com/dl.airdroid.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
