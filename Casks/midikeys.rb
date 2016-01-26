cask 'midikeys' do
  version '1.8'
  sha256 '673a11c0317ec8930940cc18bf8eef3de0d3040845c635722e99907f866a9b80'

  url "http://www.manyetas.com/creed/MidiKeys_#{version}.zip"
  appcast 'http://immosw.com/versions/midikeys/appcast.xml',
          checkpoint: '888de7cb3a3c985bc0038785f887384cdbb2d94bc0a25b4d291b4ccca7f28691'
  name 'MidiKeys'
  homepage 'http://www.manyetas.com/creed/midikeys.html'
  license :gratis

  app 'MidiKeys/MidiKeys.app'
end
