cask "calendar-366" do
  version "2.9.8,3379"
  sha256 "b4702ea8eaba53cc464ac02a36cb41d5537178f0581d21b608787fbfb3e95d43"

  url "https://nspektor.com/downloads/Calendar366_v#{version.before_comma}.dmg"
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
