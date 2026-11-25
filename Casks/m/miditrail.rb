cask "miditrail" do
  version "2.1.2"
  sha256 "e508a600286157c94cd08f8236ca893d5795035b41a41cdfef2b6106d92d0ff5"

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
