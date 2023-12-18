cask "navicat-premium-essentials" do
  version "16.3.4"
  sha256 :no_check

  url "https://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name "Navicat Premium Essentials"
  desc "Database administration and development tool"
  homepage "https://navicat.com/products/navicat-essentials"

  livecheck do
    cask "navicat-premium"
  end

  depends_on macos: ">= :mojave"

  app "Navicat Premium Essentials.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Navicat Help*#{version}",
    "~/Library/Preferences/com.navicat.NavicatPremiumEssentials.plist",
    "~/Library/Saved Application State/com.navicat.NavicatPremiumEssentials.savedState",
  ]
end
