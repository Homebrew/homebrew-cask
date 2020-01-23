cask 'navicat-data-modeler' do
  version '3.0.5'
  sha256 '2866e24c9f55762ee0d3bff528b0234735944048f1240853afd6ec0ae5a7412f'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://navicat.com/en/products/navicat-data-modeler-release-note'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  app 'Navicat Data Modeler.app'
end
