cask "navicat-premium-essentials" do
  version "16.3.9"
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
  language "en", default: true do
    "en"
  end

  url "https://dn.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_#{language}.dmg"
  name "Navicat Premium Essentials"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-premium"

  deprecate! date: "2024-05-14", because: :discontinued
  disable! date: "2025-05-15", because: :discontinued

  depends_on :macos

  app "Navicat Premium Essentials.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*",
    "~/Library/Preferences/com.navicat.NavicatPremiumEssentials.plist",
    "~/Library/Saved Application State/com.navicat.NavicatPremiumEssentials.savedState",
  ]
end
