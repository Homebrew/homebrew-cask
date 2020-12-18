cask "calendar-366" do
  version "2.9.3"
  sha256 "063ce5cf449f84a6165f230ee4c56106be823b816ca6475efa1566e1329440a9"

  url "https://nspektor.com/downloads/Calendar366_v#{version}.dmg"
  appcast "https://nspektor.com/downloads/Calendar366IIAsset.xml"
  name "Calendar 366 II"
  desc "Menu bar calendar for events and reminders"
  homepage "https://nspektor.com/calendar366/mac"

  app "Calendar 366 II.app"

  zap trash: [
    "~/Library/Application Scripts/com.nspektor.macos.Calendar-366-II-Mini",
    "~/Library/Application Support/Calendar 366 II",
    "~/Library/Caches/com.nspektor.macos.Calendar-366-II",
    "~/Library/Preferences/com.nspektor.macos.Calendar-366-II.plist",
  ]
end
