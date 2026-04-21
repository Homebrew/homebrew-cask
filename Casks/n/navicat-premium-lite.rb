cask "navicat-premium-lite" do
  version "17.3.10"
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

  url "https://dn.navicat.com/download/navicat#{version.major}_premium_lite_#{language}.dmg"
  name "Navicat Premium Lite"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-premium-lite"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :big_sur"

  app "Navicat Premium Lite.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat Premium",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*",
    "~/Library/HTTPStorages/com.navicat.NavicatPremiumLite",
    "~/Library/Preferences/com.navicat.NavicatPremiumLite.plist",
    "~/Library/Saved Application State/com.navicat.NavicatPremiumLite.savedState",
  ]
end
