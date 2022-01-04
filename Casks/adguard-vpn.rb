cask "adguard-vpn" do
  version "1.1.0.167"
  sha256 "e36f532559a8283f0fe2bc4db1ccb0a9ac2187e55ce8a9560f0fabfe4ca9fb5c"

  url "https://static.adguard-vpn.com/mac/release/AdGuardVPN-#{version}.dmg"
  name "Adguard VPN"
  desc "VPN for privacy and security"
  homepage "https://adguard-vpn.com/"

  livecheck do
    url "https://static.adguard-vpn.com/mac/adguard-release-appcast.xml"
    regex(/AdGuardVPN[._-]?(\d+(?:\.\d+)+)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "AdGuard VPN.pkg"

  uninstall quit:      "com.adguard.mac.vpn",
            launchctl: "com.adguard.mac.vpn.tun-helper",
            pkgutil:   "com.adguard.mac.vpn-pkg"

  zap trash: "/Library/Application Support/com.adguard.mac.vpn"
end
