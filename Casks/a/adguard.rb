cask "adguard" do
  version "2.16.2.1865"
  sha256 "b7ca57c6cbb93957035c587c3028f96862cf3eabdb0995e3cfca17fd4bc7d2a0"

  url "https://static.adguard.com/mac/release/AdGuard-#{version}.dmg"
  name "AdGuard"
  desc "Stand alone ad blocker"
  homepage "https://adguard.com/"

  livecheck do
    url "https://static.adguard.com/mac/adguard-release-appcast.xml"
    strategy :sparkle do |item|
      item.short_version.delete_suffix(" release")
    end
  end

  auto_updates true
  conflicts_with cask: "adguard@nightly"
  depends_on macos: ">= :catalina"

  pkg "AdGuard.pkg"

  uninstall launchctl: [
              "com.adguard.mac.adguard.helper",
              "com.adguard.mac.adguard.pac",
              "com.adguard.mac.adguard.tun-helper",
              "com.adguard.mac.adguard.xpcgate2",
            ],
            quit:      "com.adguard.mac.adguard",
            pkgutil:   "com.adguard.mac.adguard-pkg",
            delete:    [
              "/Library/Application Support/AdGuard Software/com.adguard.mac.adguard",
              "/Library/Application Support/com.adguard.Adguard",
              "/Library/com.adguard.mac.adguard.pac",
            ],
            rmdir:     "/Library/Application Support/AdGuard Software"

  zap delete: "/Library/Logs/com.adguard.mac.adguard",
      trash:  [
        "~/Library/Application Scripts/*com.adguard.mac*",
        "~/Library/Application Support/Adguard",
        "~/Library/Application Support/com.adguard.*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.adguard.mac.adguard.loginhelper.sfl*",
        "~/Library/Caches/com.adguard.*",
        "~/Library/Containers/com.adguard.mac.*",
        "~/Library/Cookies/com.adguard.Adguard.binarycookies",
        "~/Library/Group Containers/*.com.adguard.mac",
        "~/Library/HTTPStorages/com.adguard.mac.*",
        "~/Library/Logs/Adguard",
        "~/Library/Preferences/com.adguard.*.plist",
        "~/Library/Saved Application State/com.adguard.mac.adguard.savedState",
      ]
end
