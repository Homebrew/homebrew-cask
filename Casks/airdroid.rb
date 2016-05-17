cask 'airdroid' do
  version '3.3.1'
  sha256 'a939073b317fd05538f7c57e67dd4f6ebdb33ac400abe67ebbe0b3d3d6db84a6'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'
  license :closed

  app 'AirDroid.app'
end
