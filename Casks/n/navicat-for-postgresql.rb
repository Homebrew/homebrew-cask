cask "navicat-for-postgresql" do
  version "17.1.10"
  sha256 :no_check

  url "https://dn.navicat.com/download/navicat#{version.major}_pgsql_en.dmg"
  name "Navicat for PostgreSQL"
  desc "Database administration and development tool for PostgreSQL"
  homepage "https://www.navicat.com/products/navicat-for-postgresql"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :big_sur"

  app "Navicat for PostgreSQL.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat for PostgreSQL",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*",
    "~/Library/Preferences/com.navicat.NavicatForPostgreSQL.plist",
    "~/Library/Saved Application State/com.navicat.NavicatForPostgreSQL.savedState",
  ]
end
