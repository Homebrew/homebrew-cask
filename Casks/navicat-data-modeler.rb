cask 'navicat-data-modeler' do
  version '3.0.9'
  sha256 '9fa0029f42662c425283f195d0dd31af8c32d2ed24386c578f54490e48c67118'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://navicat.com/en/products/navicat-data-modeler-release-note'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  app 'Navicat Data Modeler.app'
end
