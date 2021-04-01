cask "airbuddy" do
  version "2.3.2-282"
  sha256 "f744d3c125a763eed3a4d6c1f6d5c79ef6100ab44577ff4ed66053a72c39ea98"

  url "https://su.airbuddy.app/kCRSAmcjBc/AirBuddy_v#{version}.dmg"
  name "AirBuddy"
  desc "AirPods companion app"
  homepage "https://airbuddy.app/"

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
