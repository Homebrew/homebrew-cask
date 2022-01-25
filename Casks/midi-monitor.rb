cask "midi-monitor" do
  version "1.5.3"
  sha256 "d9c73c222db915f01a93d6a2893ab75e7770e2106472f8cb61100e380605d40c"

  url "https://www.snoize.com/MIDIMonitor/MIDIMonitor_#{version.dots_to_underscores}.dmg"
  name "MIDI Monitor"
  desc "Display MIDI signals going in and out of your computer"
  homepage "https://www.snoize.com/MIDIMonitor/"

  livecheck do
    url "https://www.snoize.com/MIDIMonitor/MIDIMonitor.xml"
    strategy :sparkle
  end

  app "MIDI Monitor.app"

  uninstall quit: [
    "com.snoize.MIDIMonitor",
    "com.snoize.MIDIMonitorDriver",
    "com.snoize.MIDISpyFramework",
    "com.snoize.SnoizeMIDI",
  ]

  zap trash: [
    "~/Library/Caches/com.snoize.MIDIMonitor",
    "~/Library/Preferences/com.snoize.MIDIMonitor.plist",
    "~/Library/Saved Application State/com.snoize.MIDIMonitor.savedState",
  ]
end
