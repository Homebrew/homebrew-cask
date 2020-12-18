cask "midi-monitor" do
  version "1.4.1"
  sha256 "bb37fac9094d544920eaa5c3d30fa4ac81ad279164f8e3a999f8838681f4f570"

  url "https://www.snoize.com/MIDIMonitor/MIDIMonitor_#{version.dots_to_underscores}.zip"
  appcast "https://www.snoize.com/MIDIMonitor/MIDIMonitor.xml"
  name "MIDI Monitor"
  homepage "https://www.snoize.com/MIDIMonitor/"

  app "MIDI Monitor.app"

  uninstall quit: [
    "com.snoize.MIDIMonitor",
    "com.snoize.MIDIMonitorDriver",
    "com.snoize.MIDISpyFramework",
    "com.snoize.SnoizeMIDI",
  ]

  zap trash: [
    "~/Library/Preferences/com.snoize.MIDIMonitor.plist",
    "~/Library/Caches/com.snoize.MIDIMonitor",
    "~/Library/Saved Application State/com.snoize.MIDIMonitor.savedState",
  ]
end
