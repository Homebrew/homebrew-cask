cask 'navicat-premium-essentials' do
  version '15.0.5'
  sha256 'a8c96d313895af3a95c3e8cc979cf40a2b470608ead149b7aa995df3ef9aac2b'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Premium%20Essentials&appLang=en'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
