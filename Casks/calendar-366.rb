cask "calendar-366" do
  version "2.9.0"
  sha256 "f2978ef401bd0086b8d4dfc51e4bd2d0f156e3bdab3570fc7ada88f76b232ce6"

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
