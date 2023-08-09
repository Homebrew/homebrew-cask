cask "cyberghost-vpn" do
  version "8.3.8,164"
  sha256 "729842f78b580f38b705ba097ec3d8715642852b1a0bf20ffb4262adbd16e967"

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
