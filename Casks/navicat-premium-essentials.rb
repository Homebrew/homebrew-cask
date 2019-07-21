cask 'navicat-premium-essentials' do
  version '12.1.23'
  sha256 '361cbae55594e76163b226eef9261a7a6dd23c3c6e6fab04fea6e59d4913e3e8'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
