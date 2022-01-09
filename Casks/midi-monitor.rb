cask "midi-monitor" do
  version "1.5.2"
  sha256 "548a48f54487f01ae33587fd25bc2382d79ffd89591e1cfb97c72a4c1bfb9d47"

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
    "~/Library/Preferences/com.snoize.MIDIMonitor.plist",
    "~/Library/Caches/com.snoize.MIDIMonitor",
    "~/Library/Saved Application State/com.snoize.MIDIMonitor.savedState",
  ]
end
