cask 'midikeys' do
  version '1.8'
  sha256 '673a11c0317ec8930940cc18bf8eef3de0d3040845c635722e99907f866a9b80'

  url "http://www.manyetas.com/creed/MidiKeys_#{version}.zip"
  appcast 'http://immosw.com/versions/midikeys/appcast.xml',
          :sha256 => '87a8ce2e45af98924bfa75dcd851579a1096a0e7d5b5d92498ec77df2d4cf283'
  name 'MidiKeys'
  homepage 'http://www.manyetas.com/creed/midikeys.html'
  license :gratis

  app 'MidiKeys/MidiKeys.app'
end
