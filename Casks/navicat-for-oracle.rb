cask "navicat-for-oracle" do
  version "15.0.25"
  sha256 "d9e5acaa80c3a515d5ba10f1160a2b8357aeeaec7bb1b4fe3757d58b673e2e02"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en"
  name "Navicat for Oracle"
  desc "Database administration and development tool for Oracle"
  homepage "https://www.navicat.com/products/navicat-for-oracle"

  app "Navicat for Oracle.app"
end
