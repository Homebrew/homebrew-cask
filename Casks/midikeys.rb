cask 'midikeys' do
  version '1.8'
  sha256 '673a11c0317ec8930940cc18bf8eef3de0d3040845c635722e99907f866a9b80'

  url "http://www.manyetas.com/creed/MidiKeys_#{version}.zip"
  appcast 'http://immosw.com/versions/midikeys/appcast.xml',
          :checkpoint => 'f2614ad798b75f0c50fbab2c088f62e026997fd1bf2aa3fdfd1bb75df8898873'
  name 'MidiKeys'
  homepage 'http://www.manyetas.com/creed/midikeys.html'
  license :gratis

  app 'MidiKeys/MidiKeys.app'
end
