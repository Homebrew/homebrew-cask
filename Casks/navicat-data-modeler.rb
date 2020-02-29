cask 'navicat-data-modeler' do
  version '3.0.6'
  sha256 '33fbf9f1160593fea0a287570ec825ffb38b5c9194b2c55876cd81c13e47f941'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://navicat.com/en/products/navicat-data-modeler-release-note'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  app 'Navicat Data Modeler.app'
end
