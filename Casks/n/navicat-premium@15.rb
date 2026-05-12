cask "navicat-premium@15" do
  version "15.0.36"
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

  url "https://download.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_#{language}.dmg"
  name "Navicat Premium 15"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-premium"

  livecheck do
    url "https://www.navicat.com/en/products/navicat-premium-release-note#M"
    regex(/Navicat\sPremium\s\(macOS\)\sversion\s(15\.\d+(?:\.\d+)+)/i)
  end

  conflicts_with cask: "navicat-premium"
  depends_on :macos

  app "Navicat Premium.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat Premium",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*#{version}",
    "~/Library/Preferences/com.prect.NavicatPremium#{version.major}.plist",
    "~/Library/Saved Application State/com.prect.NavicatPremium#{version.major}.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
