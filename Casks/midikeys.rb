cask 'midikeys' do
  version '1.8'
  sha256 '673a11c0317ec8930940cc18bf8eef3de0d3040845c635722e99907f866a9b80'

  url "http://www.manyetas.com/creed/MidiKeys_#{version}.zip"
  appcast 'https://immosw.com/versions/midikeys/appcast.xml'
  name 'MidiKeys'
  homepage 'http://www.manyetas.com/creed/midikeys.html'

  app 'MidiKeys/MidiKeys.app'
end
