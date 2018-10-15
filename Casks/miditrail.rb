cask 'miditrail' do
  version '1.2.3'
  sha256 '6be8c1928ae71d3713d884dbaa9e18e243f1c03ae4840bb3936321baf287e6f5'

  url "https://osdn.net/dl/miditrail/MIDITrail-Ver.#{version}-macOS.zip"
  appcast 'https://osdn.net/projects/miditrail/releases/rss'
  name 'MIDITrail'
  homepage 'https://osdn.net/projects/miditrail/'

  app 'MIDITrail/MIDITrail.app'
end
