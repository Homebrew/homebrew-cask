cask 'navicat-data-modeler' do
  version '3.0.11'
  sha256 '3e205bb724a03f1fcf29879291d927d7a578822c29a3eb370168deb9711376ca'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://navicat.com/en/products/navicat-data-modeler-release-note'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  app 'Navicat Data Modeler.app'
end
