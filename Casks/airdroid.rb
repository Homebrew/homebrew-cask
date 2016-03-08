cask 'airdroid' do
  version '3.3.0'
  sha256 '979a5b85dab87af5d4ee27d9f089816bc9a871c956a4139b92dc5624d559c2d6'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'
  license :closed

  app 'AirDroid.app'
end
