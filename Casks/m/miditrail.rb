cask "miditrail" do
  version "2.1.0"
  sha256 "e5133ff7470afb164abcd3ccb7e2cbc16c332f7642206661f3309958a1c4a19c"

  url "https://github.com/wdmss/MIDITrail-macOS/releases/download/v#{version}/MIDITrail-Ver.#{version}-macOS.zip",
      verified: "github.com/wdmss/MIDITrail-macOS/"
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
