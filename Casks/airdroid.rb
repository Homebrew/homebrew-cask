cask :v1 => 'airdroid' do
  version '3.0.4'
  sha256 'd12cd330e9d684d1761ac05f675564c8a9ef9c15003641edb62788add495d856'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'http://airdroid.com'
  license :closed

  app 'AirDroid.app'
end
