cask "ipvanish-vpn" do
  version "4.6.2,126261"
  sha256 "88b1a376ce1f0d86864026fddfc2d0e7c92416572e6e48abde90db78ead754f1"

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
