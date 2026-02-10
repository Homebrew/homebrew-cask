cask "calendar-366" do
  # NOTE: "366" is not a version number, but an intrinsic part of the product name
  version "2.15.8"
  sha256 "c747c16541281501ecc57450a524060690e5cdc4cf9f15f95304333eed88a80e"

  url "https://nspektor.com/downloads/Calendar366_v#{version}.dmg"
  name "Calendar 366 II"
  desc "Menu bar calendar for events and reminders"
  homepage "https://nspektor.com/calendar366/mac"

  livecheck do
    url "https://nspektor.com/downloads/Calendar366IIAsset.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Calendar 366 II.app"

  zap trash: [
    "~/Library/Application Scripts/com.nspektor.macos.Calendar-366-II-Mini",
    "~/Library/Application Support/Calendar 366 II",
    "~/Library/Caches/com.nspektor.macos.Calendar-366-II",
    "~/Library/Preferences/com.nspektor.macos.Calendar-366-II.plist",
  ]
end
