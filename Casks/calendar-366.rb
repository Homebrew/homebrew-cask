cask "calendar-366" do
  version "2.9.2"
  sha256 "c57e0a63258401d85431e115914496876eb264369b8411060cc5e6d602842603"

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
