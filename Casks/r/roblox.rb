cask "roblox" do
  version "0.633.1.6330512,a8ca20f2b0e344c3"
  sha256 "f7accc2d8c7418abe73193c478a628ce9e5cf95aa12e65039191aa31135b4886"

  url "https://setup.rbxcdn.com/mac/version-#{version.csv.second}-RobloxPlayer.zip",
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

  auto_updates true

  app "RobloxPlayer.app", target: "Roblox.app"

  uninstall quit:   "com.roblox.RobloxPlayer",
            delete: "/Applications/Roblox.app"

  zap trash: [
    "~/Library/Preferences/com.Roblox.Roblox.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayer.plist",
    "~/Library/Preferences/com.roblox.RobloxPlayerChannel.plist",
  ]
end
