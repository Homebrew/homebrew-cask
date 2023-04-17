cask "navicat-for-sqlite" do
  version "16.1.9"
  sha256 :no_check

  url "https://download.navicat.com/download/navicat#{version.major_minor.no_dots}_sqlite_en.dmg"
  name "Navicat for SQLite"
  desc "Database administration and development tool for SQLite"
  homepage "https://www.navicat.com/products/navicat-for-sqlite"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :mojave"

  app "Navicat for SQLite.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat for SQLite",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*#{version}",
    "~/Library/Preferences/com.navicat.NavicatForSQLite.plist",
    "~/Library/Saved Application State/com.navicat.NavicatForSQLite.savedState",
  ]
end
