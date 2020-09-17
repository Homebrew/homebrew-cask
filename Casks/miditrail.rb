cask "miditrail" do
  version "1.3.1,71899"
  sha256 "17d561bafa46413a721215b7df5a5442cf131acfd868309a5c8bcb37a14f1286"

  # dl.osdn.jp/miditrail/ was verified as official when first introduced to the cask
  url "http://dl.osdn.jp/miditrail/#{version.after_comma}/MIDITrail-Ver.#{version.before_comma}-macOS.zip"
  appcast "https://ja.osdn.net/projects/miditrail/releases/rss"
  name "MIDITrail"
  desc "MIDI player which provides 3D visualization of MIDI data sets"
  homepage "https://osdn.net/projects/miditrail/"

  app "MIDITrail/MIDITrail.app"
end
