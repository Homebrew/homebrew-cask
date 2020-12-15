cask "navicat-for-oracle" do
  version "15.0.24"
  sha256 "54e67365cb92b436809cabfa67fbdef72d3b025b8b2535ab8595512c431e1112"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en"
  name "Navicat for Oracle"
  desc "Database administration and development tool for Oracle"
  homepage "https://www.navicat.com/products/navicat-for-oracle"

  app "Navicat for Oracle.app"
end
