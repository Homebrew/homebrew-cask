cask "navicat-for-mariadb" do
  version "16.3.4"
  sha256 :no_check

  url "https://download.navicat.com/download/navicat#{version.major_minor.no_dots}_mariadb_en.dmg"
  name "Navicat for MariaDB"
  desc "Database management and administration tool for MariaDB"
  homepage "https://www.navicat.com/products/navicat-for-mariadb"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :mojave"

  app "Navicat for MariaDB.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat for MariaDB",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*#{version}",
    "~/Library/Preferences/com.navicat.NavicatForMariaDB.plist",
    "~/Library/Saved Application State/com.navicat.NavicatForMariaDB.savedState",
  ]
end
