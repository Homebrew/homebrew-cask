cask "navicat-for-mysql" do
  version "17.0.10"
  sha256 :no_check

  url "https://dn.navicat.com/download/navicat#{version.major_minor.no_dots}_mysql_en.dmg"
  name "Navicat for MySQL"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-for-mysql"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :mojave"

  app "Navicat for MySQL.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat for MySQL",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*",
    "~/Library/Preferences/com.navicat.NavicatForMySQL.plist",
    "~/Library/Saved Application State/com.navicat.NavicatForMySQL.savedState",
  ]
end
