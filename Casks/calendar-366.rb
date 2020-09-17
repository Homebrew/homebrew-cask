cask "calendar-366" do
  version "2.8.8"
  sha256 "5c910204558c2a8703e070e7f741bbce0115003005484a82e7706fae9b0515ec"

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
