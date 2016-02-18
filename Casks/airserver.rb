cask 'airserver' do
  version '6.0.5'
  sha256 '66b77b7d67547b9d98f2fb6f222ea557770dbd77738972c4b8538c3d39bf021d'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          checkpoint: '050e6efe583de2928608e8541315b0ce1dde182148a5b5fa52f8d981aa596d5b'
  name 'AirServer'
  homepage 'https://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
