cask :v1 => 'airserver' do
  version '6.0.2.0'
  sha256 '5ac34c8a5bfbcd1c84f868e9755b7c8f456cb0be5f74e2aa0a83788ce1c590f3'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'http://www.airserver.com/downloads/mac/appcast.xml',
          :sha256 => '3c5b0d9b77c3ec120a0c65b9da853dbf2f4f00abdafcb6006280236f11fcfd1f'
  name 'AirServer'
  homepage 'http://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
