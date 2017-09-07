cask 'airserver' do
  version '7.0.8'
  sha256 '8c2f9b7f9cfafc3005ee27eecc0a0514484c223d52a0b3656c488b998778234c'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  appcast 'https://www.airserver.com/downloads/mac/appcast.xml',
          checkpoint: '257b330e793fd68f273dcfb52e182dab49c3292a761e7bd4bd8e576052fbe53f'
  name 'AirServer'
  homepage 'https://www.airserver.com/'

  app 'AirServer.app'
end
