cask "adguard-vpn" do
  version "1.0.0.135"
  sha256 "3934f82a13077a78dd29086afc291454213c732ea1d6ba22451188e40a64e17f"

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
