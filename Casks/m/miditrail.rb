cask "miditrail" do
  version "2.1.1"
  sha256 "dbd51f788d34e21971d53d0881cd2528d4f90aed0287e8b7a9699efddb98b6f7"

  url "https://github.com/wdmss/MIDITrail-macOS/releases/download/v#{version}/MIDITrail-Ver.#{version}-macOS.zip"
  name "MIDITrail"
  desc "MIDI player which provides 3D visualization of MIDI data sets"
  homepage "https://www.yknk.org/miditrail/en/"

  depends_on :macos

  app "MIDITrail/MIDITrail.app"

  zap trash: [
    "~/Library/Preferences/jp.sourceforge.users.yknk.MIDITrail.plist",
    "~/Library/Saved Application State/jp.sourceforge.users.yknk.MIDITrail.savedState",
  ]
end
