cask :v1 => 'airserver' do
  version '5.1.1'
  sha256 '5a34ba5034ce94b335c5fe1e7d0afad156ec7cf8133ecfc93c7ef0e37777b33e'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  homepage 'http://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
