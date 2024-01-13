cask "calendarx" do
  version "2.3.4"
  sha256 "3735601950a5b063bd21a906773235e0ea51dfb7e184795c1ab5c76c9fabe6e4"

  url "https://github.com/ZzzM/CalendarX/releases/download/#{version}/CalendarX.dmg"
  name "CalendarX"
  desc "Menu bar lunar calendar"
  homepage "https://github.com/ZzzM/CalendarX"

  livecheck do
    url "https://zzzm.github.io/CalendarX/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :big_sur"

  app "CalendarX.app"

  zap trash: [
    "~/Library/Application Scripts/com.alpha.calendarx.widget",
    "~/Library/Application Scripts/com.alpha.calendarx-LaunchAtLoginHelper",
    "~/Library/Caches/com.alpha.calendarx",
    "~/Library/Containers/com.alpha.calendarx.widget",
    "~/Library/Containers/com.alpha.calendarx-LaunchAtLoginHelper",
    "~/Library/Group Containers/group.com.alpha.calendarx",
    "~/Library/HTTPStorages/com.alpha.calendarx",
    "~/Library/Preferences/com.alpha.calendarx.plist",
    "~/Library/Preferences/group.com.alpha.calendarx.plist",
    "~/Library/WebKit/com.alpha.calendarx",
  ]
end
