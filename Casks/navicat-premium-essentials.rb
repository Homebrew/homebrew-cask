cask 'navicat-premium-essentials' do
  version '12.1.22'
  sha256 '76543c2ae4af1f981858c43275a145ab6b836bc0ea0198f46af2dc7f7db7f2f1'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
