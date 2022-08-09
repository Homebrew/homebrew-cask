cask "roblox" do
  version "0.538.0.5380364,17f793e683ec4fd2"
  sha256 "eefc95fb85c888cbefaa16212779954c46482197442a82555f2e622135a28f06"

  url "https://setup.rbxcdn.com/mac/version-#{version.csv.second}-Roblox.dmg",
      verified: "setup.rbxcdn.com/"
  name "Roblox"
  desc "Online multiplayer game platform"
  homepage "https://www.roblox.com/"

  livecheck do
    url "https://clientsettingscdn.roblox.com/v1/client-version/MacPlayer"
    regex(/version":"([^"]+)".*version[._-]([^"]+)/i)
    strategy :page_match do |page, regex|
      main_version = page[regex, 1]
      client_version = page[regex, 2]
      "#{main_version},#{client_version}"
    end
  end

  installer manual: "Roblox.app"

  uninstall quit:   "com.roblox.RobloxPlayer",
            delete: "/Applications/Roblox.app"

  zap trash: [
    "~/Library/Preferences/com.Roblox.Roblox.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayer.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayerChannel.plist",
  ]
end
