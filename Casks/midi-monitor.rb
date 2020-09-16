cask "midi-monitor" do
  version "1.4"
  sha256 "3f521120eacb7d7181bf2ac9ddc04f7eaecc99bdd6ba6b4c38a4802ed7551cd2"

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
