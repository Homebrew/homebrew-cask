cask "miditrail" do
  version "2.0.3"
  sha256 "c9143721f652f6ddf6a3134a3c2d20ca547663f1998e4a213630606f6ed23eb0"

  url "https://github.com/wdmss/MIDITrail-macOS/releases/download/v#{version}/MIDITrail-Ver.#{version}-macOS.zip",
      verified: "github.com/wdmss/MIDITrail-macOS/"
  name "MIDITrail"
  desc "MIDI player which provides 3D visualization of MIDI data sets"
  homepage "https://www.yknk.org/miditrail/en/"

  app "MIDITrail/MIDITrail.app"

  zap trash: [
    "~/Library/Preferences/jp.sourceforge.users.yknk.MIDITrail.plist",
    "~/Library/Saved Application State/jp.sourceforge.users.yknk.MIDITrail.savedState",
  ]
end
