cask "navicat-premium" do
  version "17.0.10"
  sha256 :no_check

  url "https://dn.navicat.com/download/navicat#{version.major_minor.no_dots}_premium_en.dmg"
  name "Navicat Premium"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-premium"

  livecheck do
    url "https://www.navicat.com/en/products/navicat-premium-release-note#M"
    regex(/Navicat\sPremium\s\(macOS\)\sversion\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :mojave"

  app "Navicat Premium.app"

  zap trash: [
    "~/Library/Application Support/PremiumSoft CyberTech/Navicat CC/Navicat Premium",
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*",
    "~/Library/Preferences/com.navicat.NavicatPremium.plist",
    "~/Library/Saved Application State/com.navicat.NavicatPremium.savedState",
  ]
end
