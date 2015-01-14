cask :v1 => 'airdroid' do
  version '3.0.2'
  sha256 '09ca123ad4c4fed7a83fe56f7dac5f5657da0dacbe7b7d51f933014582a328f4'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'http://airdroid.com'
  license :closed

  app 'AirDroid.app'
end
