cask :v1 => 'airdroid' do
  version '3.2.0'
  sha256 'd114417d7b27498fdc4100bd7dd46722cf604683c98538ccf06cb50611a61821'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'
  license :closed

  app 'AirDroid.app'
end
