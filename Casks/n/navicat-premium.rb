cask "navicat-premium" do
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

  url "https://dn.navicat.com/download/navicat#{version.major}_premium_#{language}.dmg"
  name "Navicat Premium"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-premium"

  livecheck do
    url "https://updater.navicat.com/mac/v#{version.major}/navicat_updates.php?appName=Navicat%20Premium"
    strategy :sparkle, &:short_version
  end

  conflicts_with cask: "navicat-premium@15"
  depends_on macos: ">= :big_sur"

  app "Navicat Premium.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat Premium",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*",
    "~/Library/Preferences/com.navicat.NavicatPremium.plist",
    "~/Library/Saved Application State/com.navicat.NavicatPremium.savedState",
  ]
end
