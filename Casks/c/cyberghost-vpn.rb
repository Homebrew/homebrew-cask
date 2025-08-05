cask "cyberghost-vpn" do
  version "8.4.3,224"
  sha256 "8a66ad28e3723c48d4278ed6522428b0777df66500b059d0910c512af00ac1f1"

  url "https://download.cyberghostvpn.com/mac/updates/v7/CyberGhost-#{version.csv.first}-#{version.csv.second}.dmg"
  name "CyberGhost"
  desc "VPN client"
  homepage "https://www.cyberghostvpn.com/"

  # Some older items in the Sparkle feed have a more recent pubDate, so it's necessary to
  # work with all of the items in the feed (not just the newest one).
  livecheck do
    url "https://download.cyberghostvpn.com/mac/updates/v7/cyberghost_mac_update_v3.inf"
    strategy :sparkle do |items|
      items.map(&:nice_version)
    end
  end

  depends_on macos: ">= :high_sierra"

  app "CyberGhost VPN.app"

  zap trash: [
    "~/Library/Caches/com.cyberghostsrl.cyberghostmac",
    "~/Library/HTTPStorages/com.cyberghostsrl.cyberghostmac",
    "~/Library/Logs/com.cyberghostsrl.cyberghostmac",
    "~/Library/Preferences/com.cyberghostsrl.cyberghostmac.plist",
    "~/Library/Saved Application State/com.cyberghostsrl.cyberghostmac.savedState",
    "~/Library/WebKit/com.cyberghostsrl.cyberghostmac",
  ]
end
