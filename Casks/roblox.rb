cask "roblox" do
  version "1.2.2.5360459,6e3d2e7c823142ae"
  sha256 "eefc95fb85c888cbefaa16212779954c46482197442a82555f2e622135a28f06"

  url "https://setup.rbxcdn.com/mac/version-#{version.csv.second}-Roblox.dmg",
      verified: "setup.rbxcdn.com/"
  name "Roblox"
  desc "Online multiplayer game platform"
  homepage "https://www.roblox.com/"

  installer manual: "Roblox.app"

  uninstall quit:   "com.roblox.RobloxPlayer",
            delete: "/Applications/Roblox.app"

  zap trash: [
    "~/Library/Preferences/com.Roblox.Roblox.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayer.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayerChannel.plist",
  ]
end
