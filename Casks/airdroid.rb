cask :v1 => 'airdroid' do
  version '3.2.1'
  sha256 '6384f670d374f40e0559ad962bf7992ec310f974bdab469ed021bae69e932a59'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'
  license :closed

  app 'AirDroid.app'
end
