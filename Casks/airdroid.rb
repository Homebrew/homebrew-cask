cask :v1 => 'airdroid' do
  version '3.1.4'
  sha256 '55f55012c7c519e9549a55fc6d1ab4a373be56e01a3268d50b2ce7eae78896c9'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'
  license :closed

  app 'AirDroid.app'
end
