cask 'miditrail' do
  version '1.2.3,68138'
  sha256 '6be8c1928ae71d3713d884dbaa9e18e243f1c03ae4840bb3936321baf287e6f5'

  # dl.osdn.jp/miditrail was verified as official when first introduced to the cask
  url "http://dl.osdn.jp/miditrail/#{version.after_comma}/MIDITrail-Ver.#{version.before_comma}-macOS.zip"
  appcast 'https://ja.osdn.net/projects/miditrail/releases/rss'
  name 'MIDITrail'
  homepage 'https://osdn.net/projects/miditrail/'

  app 'MIDITrail/MIDITrail.app'
end
