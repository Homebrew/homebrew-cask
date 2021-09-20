cask "adguard-vpn" do
  version "1.0.0.136"
  sha256 "a6152b25d728974d9dab553df8f23194a026ab49b3885d8822b461f462fb2ace"

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
