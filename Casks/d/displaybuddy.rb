cask "displaybuddy" do
  version "2.30"
  sha256 "6cfc147bd32d4320875d245e5a7a43df78bb20a6112e413d085af04e111bdf32"

  url "https://displaybuddy.app/public/DisplayBuddy_#{version}.dmg"
  name "DisplayBuddy"
  desc "Monitor resolution and settings manager"
  homepage "https://displaybuddy.app/"

  livecheck do
    url "https://displaybuddy.app/public/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "DisplayBuddy.app"

  zap trash: [
    "~/Library/Application Scripts/2SL5ANA588.group.com.sids.DisplayBuddy",
    "~/Library/Application Scripts/com.sids.DisplayBuddy-LaunchAtLoginHelper",
    "~/Library/Application Scripts/com.sids.DisplayBuddy.DisplayBuddyWidget",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sids.displaybuddy.sfl*",
    "~/Library/Caches/com.sids.DisplayBuddy",
    "~/Library/Containers/com.sids.DisplayBuddy-LaunchAtLoginHelper",
    "~/Library/Containers/com.sids.DisplayBuddy.DisplayBuddyWidget",
    "~/Library/Group Containers/2SL5ANA588.group.com.sids.DisplayBuddy",
    "~/Library/HTTPStorages/com.sids.DisplayBuddy",
    "~/Library/HTTPStorages/com.sids.DisplayBuddy.binarycookies",
    "~/Library/Preferences/com.sids.DisplayBuddy.plist",
    "~/Library/WebKit/com.sids.DisplayBuddy",
  ]
end
