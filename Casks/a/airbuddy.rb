cask "airbuddy" do
  version "3.0.1,1008"
  sha256 "0c8e2b7349629f8176d7af8d2460cd06e37d1721edff6a925109914b53992700"

  url "https://su.airbuddy.app/lleMaylxgd/AirBuddy_v#{version.csv.first}-#{version.csv.second}.dmg",
      user_agent: :browser
  name "AirBuddy"
  desc "AirPods companion app"
  homepage "https://airbuddy.app/"

  livecheck do
    url "https://su.airbuddy.app/lleMaylxgd/appcast_taeyang.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "AirBuddy.app"

  zap trash: [
    "~/Library/Application Scripts/codes.rambo.AirBuddy*",
    "~/Library/Caches/codes.rambo.AirBuddy",
    "~/Library/Caches/codes.rambo.AirCore",
    "~/Library/Containers/codes.rambo.AirBuddy*",
    "~/Library/Group Containers/*.group.codes.rambo.AirBuddy",
    "~/Library/HTTPStorages/codes.rambo.AirBuddy.binarycookies",
    "~/Library/LaunchAgents/codes.rambo.AirBuddyHelper.plist",
    "~/Library/Preferences/codes.rambo.AirBuddy.plist",
    "~/Library/SyncedPreferences/codes.rambo.AirBuddy.plist",
    "~/Library/SyncedPreferences/com.apple.kvs/ChangeTokens/NoEncryption/AirBuddy",
  ]
end
