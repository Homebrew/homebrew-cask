cask "adguard" do
  version "2.5.1.918"
  sha256 "2b6d81a44803e0cd517bbaa6b16ce0d33d5618868a2dcbbb6661304ef8c90f17"

  url "https://static.adguard.com/mac/release/AdGuard-#{version}.dmg"
  appcast "https://static.adguard.com/mac/adguard-release-appcast.xml"
  name "Adguard"
  desc "Stand alone ad blocker"
  homepage "https://adguard.com/"

  auto_updates true

  pkg "AdGuard.pkg"

  uninstall pkgutil: "com.adguard.mac.adguard-pkg"

  zap trash: [
    "/Library/Application Support/com.adguard.Adguard",
    "~/Library/Application Support/Adguard",
    "~/Library/Application Support/com.adguard.Adguard",
    "~/Library/Caches/com.adguard.Adguard",
    "~/Library/Cookies/com.adguard.Adguard.binarycookies",
    "~/Library/Logs/Adguard",
    "~/Library/Preferences/com.adguard.Adguard.plist",
  ]
end
