cask 'miditrail' do
  version '1.2.2,64107'
  sha256 '6c1f5730c9404e85f769c11142fe8b3b2e8c73f77e817729ff67e01363692ef7'

  url "http://dl.osdn.jp/miditrail/#{version.after_comma}/MIDITrail-Ver.#{version.before_comma}-MacOSX.zip"
  appcast 'https://osdn.jp/projects/miditrail/releases/rss',
          checkpoint: 'a2810f314cfe202a81049d7f9b6cb0257a936b18e6e922c8dfbc2bfe775abfee'
  name 'MIDITrail'
  homepage 'https://osdn.jp/projects/miditrail/'

  app 'MIDITrail/MIDITrail.app'
end
