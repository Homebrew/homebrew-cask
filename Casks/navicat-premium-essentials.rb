cask 'navicat-premium-essentials' do
  version '12.1.20'
  sha256 'a1aa1b89a7a3c413260046cd4f1e61800e4caadb140c4f501f9d1603aa0db66b'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://www.navicat.com/updater/v120/sysProfileInfo.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
