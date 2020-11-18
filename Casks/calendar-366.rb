cask "calendar-366" do
  version "2.9.1"
  sha256 "6594cd8c9c294f6b54f58a23aa1ef2486c2049c93d4eea3a4ca460781317410f"

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
