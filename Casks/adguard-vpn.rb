cask "adguard-vpn" do
  version "1.0.0.134"
  sha256 "655e165b35498da72ba23aef3decafa34ef040f042c6f042c0d047caa1ed12c8"

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
