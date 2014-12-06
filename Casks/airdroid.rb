cask :v1 => 'airdroid' do
  version '3.0.1'
  sha256 '7a228e8a319ec35992f5817b277d43f1b4e48128636acdf0695dcc3d3451cd3e'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  homepage 'airdroid.com'
  license :closed

  app 'AirDroid.app'
end
