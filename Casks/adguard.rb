cask "adguard" do
  version "2.6.0.1041"
  sha256 "b8978225a1587e458023e18e4017ae4b37a49ac45c42094c106908637fffa461"

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
