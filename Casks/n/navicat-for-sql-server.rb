cask "navicat-for-sql-server" do
  version "17.1.10"
  sha256 :no_check

  url "https://dn.navicat.com/download/navicat#{version.major}_sqlserver_en.dmg"
  name "Navicat for SQL Server"
  desc "Database administration and development tool for SQL-server"
  homepage "https://www.navicat.com/products/navicat-for-sqlserver"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :big_sur"

  app "Navicat For SQL Server.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat for SQL Server",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*",
    "~/Library/Preferences/com.navicat.NavicatForSQLServer.plist",
    "~/Library/Saved Application State/com.navicat.NavicatForSQLServer.savedState",
  ]
end
