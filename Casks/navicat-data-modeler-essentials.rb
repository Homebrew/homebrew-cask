cask 'navicat-data-modeler-essentials' do
  version '3.0.5'
  sha256 '735b770eefa0f2c880b983bfdd2d000244c5ffdf5e0a8b4ebf92ae66664d4547'

  url "http://download3.navicat.com/updater/modeler0#{version.major_minor.no_dots}_ess_mac_en.zip"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Data%20Modeler%20Essentials'
  name 'Navicat Data Modeler Essentials'
  homepage 'https://www.navicat.com/en/products/navicat-data-modeler'

  depends_on macos: '>= :yosemite'

  app 'Navicat Data Modeler Essentials.app'
end
