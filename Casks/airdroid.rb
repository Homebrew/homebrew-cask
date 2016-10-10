cask 'airdroid' do
  version '3.3.2'
  sha256 '81eb39bb434d10cd6611617fe77ba1f0218c9b01b449ca8fdbf79beee227b075'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'

  app 'AirDroid.app'
end
