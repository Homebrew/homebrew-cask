cask "ipvanish-vpn" do
  version "4.0.5,95100"
  sha256 :no_check

  url "https://s3.amazonaws.com/ipvanish-apps/software/osx/IPVanish.dmg",
      verified: "s3.amazonaws.com/ipvanish-apps/software/osx/"
  name "IPVanish"
  desc "VPN client"
  homepage "https://www.ipvanish.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  depends_on macos: ">= :monterey"

  app "IPVanish VPN.app"

  zap trash: [
    "~/Library/Application Support/com.ipvanish.IPVanish",
    "~/Library/Caches/com.ipvanish.IPVanish",
    "~/Library/Logs/IPVanish VPN",
    "~/Library/Preferences/com.ipvanish.IPVanish.plist",
  ]
end
