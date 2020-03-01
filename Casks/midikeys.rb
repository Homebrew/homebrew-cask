cask 'midikeys' do
  version '1.9.0'
  sha256 '440e10e29a4ce9c12d003d972de9fbc5f4e6ebba79a7f7fbe24abe3872bde142'

  url "http://www.manyetas.com/creed/MidiKeys_#{version}.zip"
  appcast 'https://immosw.com/versions/midikeys/appcast.xml'
  name 'MidiKeys'
  homepage 'http://www.manyetas.com/creed/midikeys.html'

  app 'MidiKeys/MidiKeys.app'
end
