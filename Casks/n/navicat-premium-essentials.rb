cask "navicat-premium-essentials" do
  version "17.0.6"
  sha256 :no_check

  url "https://navicat.com/download/direct-download?product=navicatess#{version.major_minor.no_dots}_premium_en.dmg&location=1"
  name "Navicat Premium Essentials"
  desc "Database administration and development tool"
  homepage "https://navicat.com/products/navicat-essentials"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :mojave"

  app "Navicat Premium Essentials.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*",
    "~/Library/Preferences/com.navicat.NavicatPremiumEssentials.plist",
    "~/Library/Saved Application State/com.navicat.NavicatPremiumEssentials.savedState",
  ]
end
