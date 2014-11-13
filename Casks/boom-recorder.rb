cask :v1 => 'boom-recorder' do
  version '8.4.0'
  sha256 '6090543358b142d4d14197ef810f9e3641e10c6e1309ac5f8c18c486ab1258a7'

  url "http://www.vosgames.nl/media/downloads/Boom%20Recorder-#{version}.dmg"
  homepage 'http://www.vosgames.nl/products/BoomRecorder/'
  license :commercial

  app 'Boom Recorder.app'
end
