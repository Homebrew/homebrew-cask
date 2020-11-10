cask "adguard" do
  version "2.5.1.916"
  sha256 "8b042f4a600704ff57e751d027df9e5c2039fcf9a2213dba50af22117a9e2955"

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
