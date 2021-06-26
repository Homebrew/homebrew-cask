cask "airbuddy" do
  version "2.4.1,333"
  sha256 "27e7fda96e299a3239f5cac2b623cd68f82279077f11650a6112601e6374892d"

  url "https://su.airbuddy.app/kCRSAmcjBc/AirBuddy_v#{version.before_comma}-#{version.after_comma}.dmg"
  name "AirBuddy"
  desc "AirPods companion app"
  homepage "https://airbuddy.app/"

  livecheck do
    url "https://su.airbuddy.app/kCRSAmcjBc/appcast_hyeon.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "AirBuddy.app"

  zap trash: [
    "~/Library/Application Scripts/codes.rambo.AirBuddy*",
    "~/Library/Caches/codes.rambo.AirBuddy",
    "~/Library/Caches/codes.rambo.AirCore",
    "~/Library/Containers/codes.rambo.AirBuddy*",
    "~/Library/Group Containers/8C7439RJLG.group.codes.rambo.AirBuddy",
    "~/Library/HTTPStorages/codes.rambo.AirBuddy.binarycookies",
    "~/Library/LaunchAgents/codes.rambo.AirBuddyHelper.plist",
    "~/Library/Preferences/codes.rambo.AirBuddy.plist",
    "~/Library/SyncedPreferences/codes.rambo.AirBuddy.plist",
  ]
end
