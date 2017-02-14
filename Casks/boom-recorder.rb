cask 'boom-recorder' do
  version '8.6.5'
  sha256 'a8f2e9f4b6b7f68de40b625afc55d5424e0d503440e4b593c675b2083df5a675'

  url "http://www.vosgames.nl/media/downloads/Boom%20Recorder-#{version}.dmg"
  name 'Boom Recorder'
  homepage 'http://www.vosgames.nl/products/BoomRecorder/'

  app 'Boom Recorder.app'
end
