cask :v1 => 'airserver' do
  version '6.0.1'
  sha256 '1fef6a3ae39b8c42d422f2c9cc37d2af89bc0cce6c0f408a28724ec807c7d19b'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'http://www.airserver.com/downloads/mac/appcast.xml',
          :sha256 => '3c5b0d9b77c3ec120a0c65b9da853dbf2f4f00abdafcb6006280236f11fcfd1f'
  name 'AirServer'
  homepage 'http://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
