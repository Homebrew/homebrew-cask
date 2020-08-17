cask "navicat-premium-essentials" do
  version "15.0.20"
  sha256 "12f0607bdab808eed69de5933b16d51842c412971009bce9cc533477802e18f1"

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en"
  name "Navicat Premium Essentials"
  homepage "https://navicat.com/products/navicat-essentials"

  app "Navicat Premium Essentials.app"
end
