cask 'miditrail' do
  version '1.2.5,71069'
  sha256 'f9a10420356bc7c49c77b410b5e75e5c70d1a031ff00f53d8dabef4d1c15e1d1'

  # dl.osdn.jp/miditrail was verified as official when first introduced to the cask
  url "http://dl.osdn.jp/miditrail/#{version.after_comma}/MIDITrail-Ver.#{version.before_comma}-macOS.zip"
  appcast 'https://ja.osdn.net/projects/miditrail/releases/rss'
  name 'MIDITrail'
  homepage 'https://osdn.net/projects/miditrail/'

  app 'MIDITrail/MIDITrail.app'
end
