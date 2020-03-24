cask 'navicat-data-modeler' do
  version '3.0.7'
  sha256 '59752dd1352c2100fe20b04a47152047b2c7876f8b20ad9f1dcbe3b2f843b6c2'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://navicat.com/en/products/navicat-data-modeler-release-note'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  app 'Navicat Data Modeler.app'
end
