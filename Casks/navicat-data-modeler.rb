cask 'navicat-data-modeler' do
  version '2.1.21'
  sha256 '5b8ace74609c37607bf1efae4455f792feb1950c69671076d3fc7d2dde1756ac'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://www.navicat.com/updater/modeler_v2/sysProfileInfo.php?appName=Navicat%20Data%20Modeler'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  app 'Navicat Data Modeler.app'
end
