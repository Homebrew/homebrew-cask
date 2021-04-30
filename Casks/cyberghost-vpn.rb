cask "cyberghost-vpn" do
  version "7.1.0.92"
  sha256 "70cd118a860cd0504a29dfb3f45245c4c62777063f0c7280b22c7727cd205799"

  url "https://download.cyberghostvpn.com/mac/updates/v#{version.major}/cg#{version.major}mac_#{version}.dmg"
  name "CyberGhost"
  desc "VPN client"
  homepage "https://www.cyberghostvpn.com/"

  livecheck do
    url "https://download.cyberghostvpn.com/mac/updates/v#{version.major}/cyberghost_mac_update.inf"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "CyberGhost VPN.app"
end
