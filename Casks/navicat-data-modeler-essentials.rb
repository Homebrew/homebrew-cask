cask 'navicat-data-modeler-essentials' do
  version '3.0.9'
  sha256 'd7d3550c645352af43b3a68f87a8725c4d4880cce93703d47434bcebd7679f3a'

  url "http://download3.navicat.com/updater/modeler0#{version.major_minor.no_dots}_ess_mac_en.zip"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Data%20Modeler%20Essentials'
  name 'Navicat Data Modeler Essentials'
  homepage 'https://www.navicat.com/en/products/navicat-data-modeler'

  depends_on macos: '>= :yosemite'

  app 'Navicat Data Modeler Essentials.app'
end
