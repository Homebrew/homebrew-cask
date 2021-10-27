cask "adguard-vpn" do
  version "1.0.0.156"
  sha256 "757c6766bd38056547f1134e85c9f0592c7e30d059af072dc9573c8ffac3f454"

  url "https://static.adguard-vpn.com/mac/release/AdGuardVPN-#{version}.dmg"
  name "Adguard VPN"
  desc "VPN for privacy and security"
  homepage "https://adguard-vpn.com/"

  livecheck do
    url "https://static.adguard-vpn.com/mac/adguard-release-appcast.xml"
    strategy :page_match
    regex(/AdGuardVPN[._-]?(\d+(?:\.\d+)*)\.dmg/i)
  end

  pkg "AdGuard VPN.pkg"

  uninstall pkgutil: "com.adguard.mac.vpn-pkg"

  zap trash: "/Library/Application Support/com.adguard.mac.vpn"
end
