cask "airbuddy" do
  version "3.0.2,1023"
  sha256 "5109aef35ab87f14581d8353c72531cbe9be7518bf2596bd8c4bbc9ea9c91fc2"

  url "https://su.airbuddy.app/lleMaylxgd/AirBuddy_v#{version.csv.first}-#{version.csv.second}.dmg",
      user_agent: :browser
  name "AirBuddy"
  desc "AirPods companion app"
  homepage "https://airbuddy.app/"

  livecheck do
    url "https://su.airbuddy.app/lleMaylxgd/appcast_taeyang.xml",
        user_agent: :browser
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
