cask 'navicat-data-modeler' do
  version '2.1.21'
  sha256 '856df9e96f9a721d120eb30372ba7f90357e9432eda287d339a65f22acbc80d6'

  url "http://download3.navicat.com/updater/modeler#{version.major}0_mac_en.zip"
  appcast 'https://www.navicat.com/updater/modeler_v2/sysProfileInfo.php?appName=Navicat%20Data%20Modeler'
  name 'Navicat Data Modeler'
  homepage 'https://www.navicat.com/products/navicat-data-modeler'

  app 'Navicat Data Modeler.app'
end
