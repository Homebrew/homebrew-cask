cask "navicat-for-mysql" do
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

  url "https://dn.navicat.com/download/navicat#{version.major}_mysql_#{language}.dmg"
  name "Navicat for MySQL"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-for-mysql"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :big_sur"

  app "Navicat for MySQL.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat for MySQL",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*",
    "~/Library/Preferences/com.navicat.NavicatForMySQL.plist",
    "~/Library/Saved Application State/com.navicat.NavicatForMySQL.savedState",
  ]
end
