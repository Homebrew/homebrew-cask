cask "adguard-vpn@nightly" do
  version "2.7.0.835"
  sha256 "66c38f7613d6241e3c0ee429cb08e7cbb40a27fc6c6bd4d7f22b1e6a1fb7c7d2"

  url "https://static.adguard-vpn.com/mac/nightly/AdGuardVPN-#{version}.dmg"
  name "AdGuard VPN"
  desc "VPN for privacy and security"
  homepage "https://adguard-vpn.com/"

  livecheck do
    url "https://static.adguard-vpn.com/mac/adguard-nightly-appcast.xml"
    strategy :sparkle do |item|
      item.short_version.delete_suffix(" nightly")
    end
  end

  auto_updates true
  conflicts_with cask: "adguard-vpn"
  depends_on macos: ">= :catalina"

  pkg "AdGuard VPN.pkg"

  uninstall launchctl: [
              "com.adguard.mac.vpn.tun-helper",
              "com.adguard.mac.vpn.vpn_helper",
            ],
            quit:      "com.adguard.mac.vpn",
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
