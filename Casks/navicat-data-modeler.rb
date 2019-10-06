cask 'navicat-data-modeler' do
  version '3.0.1'
  sha256 'f8ce021fe33a81a72108b2993ca5587e96a748d1bd8e46e5330cc0d1cd6c3159'

  url "http://download.navicat.com/download/modeler0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://www.navicat.com/updater/modeler_v2/sysProfileInfo.php?appName=Navicat%20Data%20Modeler'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  app 'Navicat Data Modeler.app'
end
