cask "adguard" do
  version "2.5.0.902"
  sha256 "cd72eb1a01e4e338a86ac33167f6cf73d96cfda3c9128d2c65f7ca8812155710"

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
