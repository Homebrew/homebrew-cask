cask "navicat-premium-essentials" do
  version "16.0.11"
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
end
