cask :v1 => 'airdroid' do
  version '3.1.3'
  sha256 '7a797996f13a11fea32a2c2609c3b78592cbf7b109e964e0157b5ed02e0a639f'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'https://www.airdroid.com/'
  license :closed

  app 'AirDroid.app'
end
