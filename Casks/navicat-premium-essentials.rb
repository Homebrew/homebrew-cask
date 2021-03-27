cask "navicat-premium-essentials" do
  version "15.0.25"
  sha256 "a84813c6cccf4161ec2f07e223472a29dba79700e1f299bce690bde201c6c629"

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast "https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en"
  name "Navicat Premium Essentials"
  homepage "https://navicat.com/products/navicat-essentials"

  app "Navicat Premium Essentials.app"
end
