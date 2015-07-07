cask :v1 => 'boom-recorder' do
  version '8.5.0'
  sha256 'acb6540a9722702172f8a2c5a379467def479dc44a6d8e892c90dade12efe408'

  url "http://www.vosgames.nl/media/downloads/Boom%20Recorder-#{version}.dmg"
  name 'Boom Recorder'
  homepage 'http://www.vosgames.nl/products/BoomRecorder/'
  license :commercial

  app 'Boom Recorder.app'
end
