cask "navicat-for-sql-server" do
  version "17.3.11"
  sha256 :no_check

  language "zh-CN" do
    "cs"
  end
  language "zh-SG" do
    "cs"
  end
  language "zh-HK" do
    "ct"
  end
  language "zh-MO" do
    "ct"
  end
  language "zh-TW" do
    "ct"
  end
  language "ja" do
    "jp"
  end
  language "fr" do
    "fr"
  end
  language "de" do
    "de"
  end
  language "es" do
    "es"
  end
  language "pl" do
    "pl"
  end
  language "ko" do
    "kr"
  end
  language "ru" do
    "ru"
  end
  language "id" do
    "id"
  end
  language "th" do
    "th"
  end
  language "en", default: true do
    "en"
  end

  url "https://dn.navicat.com/download/navicat#{version.major}_sqlserver_#{language}.dmg"
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
