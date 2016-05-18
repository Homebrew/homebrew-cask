cask 'airserver' do
  version '6.0.6'
  sha256 'd69453c83016d420cd9222dba0ecb0a756e58d647ded2ed2927f062cb8d12a82'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          checkpoint: '32c0941369a342febbd49d830f796f8cc0c7c8d4a78c4668ee0e81dc9feb5802'
  name 'AirServer'
  homepage 'https://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
