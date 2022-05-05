cask "calendar-366" do
  version "2.12,3417"
  sha256 "a25d6c37c91746847a76070f6ccd7fd99e8564d4cd135b19b0b7d07311bfbbf7"

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
