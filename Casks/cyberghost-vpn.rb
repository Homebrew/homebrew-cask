cask "cyberghost-vpn" do
  version "8.3.1,144"
  sha256 "e9cbbd658ac63478c11eeb41d23d787087eed137e48bb0e0761aede9f8503b95"

  url "https://download.cyberghostvpn.com/mac/updates/v7/CyberGhost-#{version.csv.first}.#{version.csv.second}.dmg"
  name "CyberGhost"
  desc "VPN client"
  homepage "https://www.cyberghostvpn.com/"

  livecheck do
    url "https://download.cyberghostvpn.com/mac/updates/v7/cyberghost_mac_update_v3.inf"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "CyberGhost VPN.app"
end
