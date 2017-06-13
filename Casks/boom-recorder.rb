cask 'boom-recorder' do
  version '8.7.1'
  sha256 '4a5dfe09aec59238f6d60cfe8fb936bc288856eb7113d7d97e90a3f54d4d7fc7'

  url "http://www.vosgames.nl/media/downloads/Boom%20Recorder-#{version}.dmg"
  name 'Boom Recorder'
  homepage 'http://www.vosgames.nl/products/BoomRecorder/'

  app 'Boom Recorder.app'
end
