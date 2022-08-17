cask "roblox" do
  version "0.539.0.5390403,d937a525133a45cc"
  sha256 "f68cfbccc5cf82d2acad713feeb9423b78e5668143500a44e63d00ab419ae48c"

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
