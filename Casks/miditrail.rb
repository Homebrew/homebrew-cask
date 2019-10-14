cask 'miditrail' do
  version '1.2.6,71183'
  sha256 '37ab9b7689ba2cb0be9991a2b2cfd21972176b00c06ac667a3de6e7459c186f6'

  # dl.osdn.jp/miditrail was verified as official when first introduced to the cask
  url "http://dl.osdn.jp/miditrail/#{version.after_comma}/MIDITrail-Ver.#{version.before_comma}-macOS.zip"
  appcast 'https://ja.osdn.net/projects/miditrail/releases/rss'
  name 'MIDITrail'
  homepage 'https://osdn.net/projects/miditrail/'

  app 'MIDITrail/MIDITrail.app'
end
