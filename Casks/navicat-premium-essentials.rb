cask 'navicat-premium-essentials' do
  version '12.1.15'
  sha256 'af1cbee61c96c69c19067b58c126f09e3980daa19a4befb51d8a3c3481b8c506'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
