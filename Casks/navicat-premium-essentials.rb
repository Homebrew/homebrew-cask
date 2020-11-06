cask "navicat-premium-essentials" do
  version "15.0.22"
  sha256 "fa3a35359eefebff80315fb31dda68a977675e7f51d0f676ea61a970c4497116"

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en"
  name "Navicat Premium Essentials"
  homepage "https://navicat.com/products/navicat-essentials"

  app "Navicat Premium Essentials.app"
end
