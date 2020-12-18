cask "navicat-premium-essentials" do
  version "15.0.24"
  sha256 "ad8d7398c5c34a1859da5f98d990f3bf7bc8c0c632f0c795b85ee8f22dff23cd"

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en"
  name "Navicat Premium Essentials"
  homepage "https://navicat.com/products/navicat-essentials"

  app "Navicat Premium Essentials.app"
end
