cask "airbuddy" do
  version "2.3-275"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://su.airbuddy.app/kCRSAmcjBc/AirBuddy_v#{version}.dmg"
  appcast "https://su.airbuddy.app/kCRSAmcjBc/appcast_hyeon.xml"
  name "Airbuddy"
  desc "AirPods companion app"
  homepage "https://v2.airbuddy.app/"

  auto_updates true

  app "AirBuddy.app"

  zap trash: [
    "~/Library/Group Containers/8C7439RJLG.group.codes.rambo.AirBuddy",
    "~/Library/Preferences/codes.rambo.AirBuddy.plist",
    "~/Library/Application Scripts/codes.rambo.AirBuddy.Batteries",
    "~/Library/Application Scripts/codes.rambo.AirBuddy.ModernWidget",
    "~/Library/Application Scripts/codes.rambo.AirBuddy.AssetService",
    "~/Library/Application Scripts/codes.rambo.AirBuddy.ProxCardUIService",
    "~/Library/Application Scripts/codes.rambo.AirBuddy.AirBuddyIntents",
    "~/Library/Application Scripts/codes.rambo.AirBuddy.AirStatsService",
    "~/Library/Application Scripts/codes.rambo.AirBuddyHelper",
    "~/Library/HTTPStorages/codes.rambo.AirBuddy.binarycookies",
    "~/Library/SyncedPreferences/codes.rambo.AirBuddy.plist",
    "~/Library/LaunchAgents/codes.rambo.AirBuddyHelper.plist",
    "~/Library/Containers/codes.rambo.AirBuddy.Batteries",
    "~/Library/Containers/codes.rambo.AirBuddy.ModernWidget",
    "~/Library/Containers/codes.rambo.AirBuddy.AssetService",
    "~/Library/Containers/codes.rambo.AirBuddy.ProxCardUIService",
    "~/Library/Containers/codes.rambo.AirBuddy.AirBuddyIntents",
    "~/Library/Containers/codes.rambo.AirBuddy.AirStatsService",
    "~/Library/Containers/codes.rambo.AirBuddyHelper",
    "~/Library/Caches/codes.rambo.AirBuddy",
    "~/Library/Caches/codes.rambo.AirCore",
  ]
end
