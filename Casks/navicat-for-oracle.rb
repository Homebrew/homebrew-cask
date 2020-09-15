cask "navicat-for-oracle" do
  version "15.0.21"
  sha256 "e4daad3bd9d56258b93a4a0e8c86279b1e1f60e2f9ba1e833a0611150a8687f2"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en"
  name "Navicat for Oracle"
  desc "Database administration and development tool for Oracle"
  homepage "https://www.navicat.com/products/navicat-for-oracle"

  app "Navicat for Oracle.app"
end
