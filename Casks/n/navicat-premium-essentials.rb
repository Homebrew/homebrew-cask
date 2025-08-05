cask "navicat-premium-essentials" do
  version "16.3.9"
  sha256 :no_check

  url "https://dn.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name "Navicat Premium Essentials"
  desc "Database administration and development tool"
  homepage "https://www.navicat.com/products/navicat-premium"

  deprecate! date: "2024-05-14", because: :discontinued
  disable! date: "2025-05-15", because: :discontinued

  depends_on macos: ">= :mojave"

  app "Navicat Premium Essentials.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*",
    "~/Library/Preferences/com.navicat.NavicatPremiumEssentials.plist",
    "~/Library/Saved Application State/com.navicat.NavicatPremiumEssentials.savedState",
  ]
end
