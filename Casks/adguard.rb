cask "adguard" do
  version "2.7.0.1094"
  sha256 "c1733f65960c3798cccfe7492fad2f579a9d1f443514a0d6dcf201b7df86a416"

  url "https://static.adguard.com/mac/release/AdGuard-#{version}.dmg"
  name "Adguard"
  desc "Stand alone ad blocker"
  homepage "https://adguard.com/"

  livecheck do
    url "https://static.adguard.com/mac/adguard-release-appcast.xml"
    strategy :sparkle do |item|
      item.short_version.sub(/ release.*/, "")
    end
  end

  auto_updates true

  pkg "AdGuard.pkg"

  uninstall pkgutil:   "com.adguard.mac.adguard-pkg",
            launchctl: [
              "com.adguard.mac.adguard.pac",
              "com.adguard.mac.adguard.tun-helper",
            ],
            delete:    [
              "/Library/com.adguard.mac.adguard.pac",
              "/Library/Application Support/AdGuard Software",
              "/Library/Application Support/com.adguard.Adguard",
              "/Library/LaunchDaemons/com.adguard.mac.adguard.pac.plist",
              "/Library/LaunchDaemons/com.adguard.mac.adguard.tun-helper.plist",
            ]

  zap trash: [
    "~/Library/Application Scripts/*.com.adguard.mac",
    "~/Library/Application Scripts/com.adguard.mac.adguard.loginhelper",
    "~/Library/Application Scripts/com.adguard.mac.adguard.safari-assistant",
    "~/Library/Application Support/Adguard",
    "~/Library/Application Support/com.adguard.Adguard",
    "~/Library/Application Support/com.adguard.mac.adguard.pac",
    "~/Library/Application Support/com.adguard.mac.adguard.tun-helper",
    "~/Library/Caches/com.adguard.Adguard",
    "~/Library/Containers/com.adguard.mac.adguard.loginhelper",
    "~/Library/Containers/com.adguard.mac.adguard.safari-assistant",
    "~/Library/Cookies/com.adguard.Adguard.binarycookies",
    "~/Library/Group Containers/*.com.adguard.mac",
    "~/Library/HTTPStorages/com.adguard.mac.adguard",
    "~/Library/Logs/Adguard",
    "~/Library/Preferences/com.adguard.Adguard.plist",
    "~/Library/Saved Application State/com.adguard.mac.adguard.savedState",
  ]
end
