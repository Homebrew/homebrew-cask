cask "navicat-premium-essentials" do
  version "15.0.33"
  sha256 :no_check

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  name "Navicat Premium Essentials"
  desc "Database administration and development tool"
  homepage "https://navicat.com/products/navicat-essentials"

  livecheck do
    url "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en"
    strategy :sparkle
  end

  app "Navicat Premium Essentials.app"
end
