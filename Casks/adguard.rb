cask "adguard" do
  version "2.5.2.949"
  sha256 "a38b91ca238094604edd3988f22f92eaa0f5a9e99f0dbc5cc7b440a29f301f6b"

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
