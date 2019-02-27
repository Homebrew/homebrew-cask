cask 'navicat-premium-essentials' do
  version '12.1.16'
  sha256 'd458203cfd78a06a61caaece7e978918cfd77b780cdfc7a14721f8d007ad3319'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
