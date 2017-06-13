cask 'miditrail' do
  version '1.2.2,64107'
  sha256 '6c1f5730c9404e85f769c11142fe8b3b2e8c73f77e817729ff67e01363692ef7'

  # dl.osdn.jp/miditrail was verified as official when first introduced to the cask
  url "http://dl.osdn.jp/miditrail/#{version.after_comma}/MIDITrail-Ver.#{version.before_comma}-MacOSX.zip"
  appcast 'https://ja.osdn.net/projects/miditrail/releases/rss',
          checkpoint: '8da63abdfbc8cde08c4993b6895ac475ba7986e15aa0f5dd750cdc060dc11a59'
  name 'MIDITrail'
  homepage 'https://osdn.net/projects/miditrail/'

  app 'MIDITrail/MIDITrail.app'
end
