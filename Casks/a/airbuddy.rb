cask "airbuddy" do
  version "3.1,1055"
  sha256 "4e12c51b3793310026062a1c1057b85cf9f21a2bf8b5e3e6d6bb7a28fa4c7cec"

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
    "~/Library/Application Scripts/*.group.codes.rambo.AirBuddy",
    "~/Library/Application Scripts/codes.rambo.AirBuddy*",
    "~/Library/Application Support/AirBuddy",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/codes.rambo.airbuddyhelper.sfl*",
    "~/Library/Caches/codes.rambo.AirBuddy",
    "~/Library/Caches/codes.rambo.AirCore",
    "~/Library/Containers/codes.rambo.AirBuddy*",
    "~/Library/Group Containers/*.group.codes.rambo.AirBuddy",
    "~/Library/HTTPStorages/codes.rambo.AirBuddy",
    "~/Library/HTTPStorages/codes.rambo.AirBuddy.binarycookies",
    "~/Library/LaunchAgents/codes.rambo.AirBuddyHelper.plist",
    "~/Library/Preferences/codes.rambo.AirBuddy.BluetoothClassicService.plist",
    "~/Library/Preferences/codes.rambo.AirBuddy.plist",
    "~/Library/SyncedPreferences/codes.rambo.AirBuddy.plist",
    "~/Library/SyncedPreferences/com.apple.kvs/ChangeTokens/NoEncryption/AirBuddy",
    "~/Library/WebKit/codes.rambo.AirBuddy",
  ]
end
