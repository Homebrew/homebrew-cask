cask "cyberghost-vpn" do
  version "8.3.7,160"
  sha256 "79fabc0908a2edfae07a1c29f874c40c9be3727db3ef6e7c68615f7ac3ef6a4b"

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
