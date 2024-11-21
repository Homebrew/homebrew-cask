cask "navicat-for-sqlite" do
  version "17.1.7"
  sha256 :no_check

  url "https://dn.navicat.com/download/navicat#{version.major}_sqlite_en.dmg"
  name "Navicat for SQLite"
  desc "Database administration and development tool for SQLite"
  homepage "https://www.navicat.com/products/navicat-for-sqlite"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :big_sur"

  app "Navicat for SQLite.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat for SQLite",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*",
    "~/Library/Preferences/com.navicat.NavicatForSQLite.plist",
    "~/Library/Saved Application State/com.navicat.NavicatForSQLite.savedState",
  ]
end
