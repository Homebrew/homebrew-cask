cask "calendar-366" do
  version "2.12.3,3427"
  sha256 "e7088953117a376d8e00d734e9f48617ff14abec00fd1bf939a4687af9b3a6a9"

  url "https://nspektor.com/downloads/Calendar366_v#{version.csv.first}.dmg"
  name "Calendar 366 II"
  desc "Menu bar calendar for events and reminders"
  homepage "https://nspektor.com/calendar366/mac"

  livecheck do
    url "https://nspektor.com/downloads/Calendar366IIAsset.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Calendar 366 II.app"

  zap trash: [
    "~/Library/Application Scripts/com.nspektor.macos.Calendar-366-II-Mini",
    "~/Library/Application Support/Calendar 366 II",
    "~/Library/Caches/com.nspektor.macos.Calendar-366-II",
    "~/Library/Preferences/com.nspektor.macos.Calendar-366-II.plist",
  ]
end
