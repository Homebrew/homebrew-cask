cask "calendar-366" do
  version "2.11.1,3409"
  sha256 "5a6e3226162c49f7c6973df4f76f47eb135140758d8f6c223f27d14879474926"

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
