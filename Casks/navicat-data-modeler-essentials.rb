cask 'navicat-data-modeler-essentials' do
  version '3.0.11'
  sha256 '3ec863e78d68ebc28f64fb65d0ed1f824f0bb8f2fd0b80b2ffe61a495b63a233'

  url "http://download3.navicat.com/updater/modeler0#{version.major_minor.no_dots}_ess_mac_en.zip"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Data%20Modeler%20Essentials'
  name 'Navicat Data Modeler Essentials'
  homepage 'https://www.navicat.com/en/products/navicat-data-modeler'

  depends_on macos: '>= :yosemite'

  app 'Navicat Data Modeler Essentials.app'
end
