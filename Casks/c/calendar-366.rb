cask "calendar-366" do
  # NOTE: "366" is not a version number, but an intrinsic part of the product name
  version "2.15.6"
  sha256 "d87c8e7838b79995cf041fff3fb1325e84261a83e7d2bb27e62250adb24581c6"

  url "https://nspektor.com/downloads/Calendar366_v#{version}.dmg"
  name "Calendar 366 II"
  desc "Menu bar calendar for events and reminders"
  homepage "https://nspektor.com/calendar366/mac"

  livecheck do
    url "https://nspektor.com/downloads/Calendar366IIAsset.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "Calendar 366 II.app"

  zap trash: [
    "~/Library/Application Scripts/com.nspektor.macos.Calendar-366-II-Mini",
    "~/Library/Application Support/Calendar 366 II",
    "~/Library/Caches/com.nspektor.macos.Calendar-366-II",
    "~/Library/Preferences/com.nspektor.macos.Calendar-366-II.plist",
  ]
end
