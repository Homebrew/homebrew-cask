cask "airbuddy" do
  version "2.3-275"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://su.airbuddy.app/kCRSAmcjBc/AirBuddy_v#{version}.dmg"
  name "Airbuddy"
  desc "AirPods companion app"
  homepage "https://v2.airbuddy.app/"

  livecheck do
    url "https://su.airbuddy.app/kCRSAmcjBc/appcast_hyeon.xml"
    strategy :page_match
    regex(/airbuddy_v(\d+(?:.\d+)*)\.dmg/i)
  end

  auto_updates true

  app "AirBuddy.app"

  zap trash: [
    "~/Library/Preferences/codes.rambo.AirBuddy.plist",
    "~/Library/Application Scripts/codes.rambo.AirBuddy*",
    "~/Library/Caches/codes.rambo.AirBuddy",
    "~/Library/Caches/codes.rambo.AirCore",
    "~/Library/Containers/codes.rambo.AirBuddy*",
    "~/Library/Group Containers/8C7439RJLG.group.codes.rambo.AirBuddy",
    "~/Library/HTTPStorages/codes.rambo.AirBuddy.binarycookies",
    "~/Library/LaunchAgents/codes.rambo.AirBuddyHelper.plist",
    "~/Library/SyncedPreferences/codes.rambo.AirBuddy.plist",
  ]
end
