cask 'airserver' do
  version '7.0.2'
  sha256 '637e574f2e7e09960db3bf47d71bcc72b21d4375365d36953266c3c9793c6a9f'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          checkpoint: '7336b8a1360c18d81499cac1c53c3e7c6757cf6f29437900ec1aa82bdc6af60d'
  name 'AirServer'
  homepage 'https://www.airserver.com/'

  app 'AirServer.app'
end
