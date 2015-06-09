cask :v1 => 'airdroid' do
  version '3.1.0'
  sha256 'a6909a15b47c50c376c1cddd2690bf89fa1c8992063cf286b0ba5a3df16c6d6d'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'
  license :closed

  app 'AirDroid.app'
end
