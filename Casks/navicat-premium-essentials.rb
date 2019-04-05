cask 'navicat-premium-essentials' do
  version '12.1.18'
  sha256 '233a823fb8632f3b4d40cd8f129be2cc127c73dd6b8692567744091002078d85'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
