cask "calendar-366" do
  version "2.9.7,3377"
  sha256 "a671de160e2fe268afdf21cca3788659be9e7bdc05f874589cbc1a61aad171f9"

  url "https://nspektor.com/downloads/Calendar366_v#{version.before_comma}.dmg"
  name "Calendar 366 II"
  desc "Menu bar calendar for events and reminders"
  homepage "https://nspektor.com/calendar366/mac"

  livecheck do
    url "https://nspektor.com/downloads/Calendar366IIAsset.xml"
    strategy :sparkle
  end

  app "Calendar 366 II.app"

  zap trash: [
    "~/Library/Application Scripts/com.nspektor.macos.Calendar-366-II-Mini",
    "~/Library/Application Support/Calendar 366 II",
    "~/Library/Caches/com.nspektor.macos.Calendar-366-II",
    "~/Library/Preferences/com.nspektor.macos.Calendar-366-II.plist",
  ]
end
