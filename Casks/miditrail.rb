cask :v1 => 'miditrail' do
  version '1.2.1'
  sha256 '183070cf0c4e071ef5251979a27a75933e21855ebd3c346ce7f6be328d5e43a0'

  url "http://dl.sourceforge.jp/miditrail/60194/MIDITrail-Ver.#{version}-MacOSX.zip"
  homepage 'http://en.sourceforge.jp/projects/miditrail/'
  license :oss

  app 'MIDITrail/MIDITrail.app'
end
