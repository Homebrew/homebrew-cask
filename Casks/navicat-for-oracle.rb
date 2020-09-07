cask "navicat-for-oracle" do
  version "15.0.20"
  sha256 "43222132cadf083938d00e9be4f3ac7c6c953927191c44aa1902b6984cb60ccf"

  url "http://download.navicat.com/download/navicat#{version.major_minor.no_dots}_ora_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20for%20Oracle&appLang=en"
  name "Navicat for Oracle"
  homepage "https://www.navicat.com/products/navicat-for-oracle"

  app "Navicat for Oracle.app"
end
