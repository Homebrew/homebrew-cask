cask "displaybuddy" do
  version "2.24"
  sha256 "0b80e30ea0fc1d183c4f0fa86c67a2a97e7f7eb741cac9f554b5f2d5e8f28f6b"

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
