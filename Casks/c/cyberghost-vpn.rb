cask "cyberghost-vpn" do
  version "8.4.8,291"
  sha256 "4d736e05f1d43aead1cd4a3a836e3d48e3cd2c14e6d79240754397c261f27ff9"

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

  depends_on :macos

  app "CyberGhost VPN.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.cyberghostsrl.cyberghostmac.sfl*",
    "~/Library/Caches/com.cyberghostsrl.cyberghostmac",
    "~/Library/HTTPStorages/com.cyberghostsrl.cyberghostmac",
    "~/Library/Logs/com.cyberghostsrl.cyberghostmac",
    "~/Library/Preferences/com.cyberghostsrl.cyberghostmac.plist",
    "~/Library/Saved Application State/com.cyberghostsrl.cyberghostmac.savedState",
    "~/Library/WebKit/com.cyberghostsrl.cyberghostmac",
  ]
end
