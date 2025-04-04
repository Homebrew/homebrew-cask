cask "ipvanish-vpn" do
  version "4.8.0,132565"
  sha256 "fbdbb47e495e5ce9a0f4155f9ccb08cfaa503c404cc4eed292d26f3047235fa1"

  url "https://www.ipvanish.com/software/osx/IPVanish_v#{version.csv.first}_#{version.csv.second}.zip"
  name "IPVanish"
  desc "VPN client"
  homepage "https://www.ipvanish.com/"

  livecheck do
    url "https://www.ipvanish.com/software/osx/updates_V#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "IPVanish VPN.app"

  zap trash: [
    "~/Library/Application Support/com.ipvanish.IPVanish",
    "~/Library/Caches/com.ipvanish.IPVanish",
    "~/Library/HTTPStorages/com.ipvanish.IPVanish",
    "~/Library/Logs/IPVanish VPN",
    "~/Library/Preferences/com.ipvanish.IPVanish.plist",
    "~/Library/Saved Application State/com.ipvanish.IPVanish.savedState",
  ]
end
