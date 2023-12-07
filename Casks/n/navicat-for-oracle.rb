cask "navicat-for-oracle" do
  version "16.3.3"
  sha256 :no_check

  url "https://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  name "Navicat for Oracle"
  desc "Database administration and development tool for Oracle"
  homepage "https://www.navicat.com/products/navicat-for-oracle"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :mojave"

  app "Navicat for Oracle.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat for Oracle",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*#{version}",
    "~/Library/Preferences/com.navicat.NavicatForOracle.plist",
    "~/Library/Saved Application State/com.navicat.NavicatForOracle.savedState",
  ]
end
