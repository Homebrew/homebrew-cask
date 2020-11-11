cask "navicat-for-oracle" do
  version "15.0.22"
  sha256 "60587c883cde2a36875bbb1e7b45690046cec463f226dcbe32d70cfd305f1916"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en"
  name "Navicat for Oracle"
  desc "Database administration and development tool for Oracle"
  homepage "https://www.navicat.com/products/navicat-for-oracle"

  app "Navicat for Oracle.app"
end
