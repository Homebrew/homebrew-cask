cask "cyberghost-vpn" do
  version "7.1.0.92"
  sha256 "70cd118a860cd0504a29dfb3f45245c4c62777063f0c7280b22c7727cd205799"

  url "https://download.cyberghostvpn.com/mac/updates/v#{version.major}/cg#{version.major}mac_#{version}.dmg"
  appcast "https://download.cyberghostvpn.com/mac/updates/v#{version.major}/cyberghost_mac_update.inf"
  name "CyberGhost"
  homepage "https://www.cyberghostvpn.com/"

  depends_on macos: ">= :sierra"

  app "CyberGhost VPN.app"
end
