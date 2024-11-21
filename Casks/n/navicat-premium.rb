cask "navicat-premium" do
  version "17.1.7"
  sha256 :no_check

  url "https://dn.navicat.com/download/navicat#{version.major}_premium_en.dmg"
  name "Navicat Premium"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-premium"

  livecheck do
    url "https://updater.navicat.com/mac/v#{version.major}/navicat_updates.php?appName=Navicat%20Premium"
    strategy :sparkle, &:short_version
  end

  conflicts_with cask: "navicat-premium@15"
  depends_on macos: ">= :mojave"

  app "Navicat Premium.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat Premium",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*",
    "~/Library/Preferences/com.navicat.NavicatPremium.plist",
    "~/Library/Saved Application State/com.navicat.NavicatPremium.savedState",
  ]
end
