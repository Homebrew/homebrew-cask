cask "adguard-vpn" do
  version "2.0.2.316"
  sha256 "2dc18766e77b7d907111a2efb1d998f109f4dc617d5c80adb1b6bc2fdec52222"

  url "https://static.adguard-vpn.com/mac/release/AdGuardVPN-#{version}.dmg"
  name "AdGuard VPN"
  desc "VPN for privacy and security"
  homepage "https://adguard-vpn.com/"

  livecheck do
    url "https://static.adguard-vpn.com/mac/adguard-release-appcast.xml"
    strategy :sparkle do |item|
      item.short_version.sub(/ release.*/, "")
    end
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/adguard-vpn-nightly"
  depends_on macos: ">= :catalina"

  pkg "AdGuard VPN.pkg"

  uninstall quit:      "com.adguard.mac.vpn",
            launchctl: "com.adguard.mac.vpn.tun-helper",
            pkgutil:   "com.adguard.mac.vpn-pkg",
            delete:    [
              "/Library/Application Support/AdGuard Software/com.adguard.mac.vpn",
              "/Library/Application Support/com.adguard.mac.vpn",
              "/Library/Logs/com.adguard.mac.vpn",
            ],
            rmdir:     "/Library/Application Support/AdGuard Software"

  zap trash: [
    "~/Library/Application Scripts/*.com.adguard.mac",
    "~/Library/Application Scripts/com.adguard.mac.vpn.launchatlogin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.adguard.mac.vpn.launchatlogin.sfl*",
    "~/Library/Caches/com.adguard.mac.vpn",
    "~/Library/Containers/com.adguard.mac.vpn.launchatlogin",
    "~/Library/Group Containers/*.com.adguard.mac",
    "~/Library/HTTPStorages/com.adguard.mac.vpn",
    "~/Library/Preferences/com.adguard.mac.vpn.plist",
  ]
end
