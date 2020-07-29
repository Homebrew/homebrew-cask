cask 'navicat-premium-essentials' do
  version '15.0.17'
  sha256 '24ce244fe8a46f556e15908a5b8485f5d71b85bf6b85b1ee8cec991d7bd5f8c2'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
