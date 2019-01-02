cask 'boom-recorder' do
  version '8.7.3'
  sha256 '6356370b4462d3a3fa8d05a9e789284c50973f75f3cf2798ce582b54fc9bc1ed'

  url "http://www.vosgames.nl/media/downloads/Boom%20Recorder-#{version}.dmg"
  name 'Boom Recorder'
  homepage 'http://www.vosgames.nl/products/BoomRecorder/'

  app 'Boom Recorder.app'
end
