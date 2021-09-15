cask "cyberghost-vpn" do
  version "8.2.0,137"
  sha256 "5670e68423c74eaba74041eaa2fba5709b213f5a5d1ba424ca398a7fc9d918d9"

  url "https://download.cyberghostvpn.com/mac/updates/v7/CyberGhost-#{version.before_comma}.#{version.after_comma}.dmg"
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
