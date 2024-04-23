cask "midi-monitor" do
  version "1.5.4"
  sha256 "6deea9673e2947c59ef4f2c57446366930989ea2688cc5d5b8265401a38a3971"

  url "https://www.snoize.com/MIDIMonitor/MIDIMonitor_#{version.dots_to_underscores}.dmg"
  name "MIDI Monitor"
  desc "Display MIDI signals going in and out of your computer"
  homepage "https://www.snoize.com/MIDIMonitor/"

  livecheck do
    url "https://www.snoize.com/MIDIMonitor/MIDIMonitor.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "MIDI Monitor.app"

  uninstall quit: [
    "com.snoize.MIDIMonitor",
    "com.snoize.MIDIMonitorDriver",
    "com.snoize.MIDISpyFramework",
    "com.snoize.SnoizeMIDI",
  ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.snoize.midimonitor.sfl*",
    "~/Library/Caches/com.snoize.MIDIMonitor",
    "~/Library/HTTPStorages/com.snoize.MIDIMonitor",
    "~/Library/Preferences/com.snoize.MIDIMonitor.plist",
    "~/Library/Saved Application State/com.snoize.MIDIMonitor.savedState",
  ]
end
