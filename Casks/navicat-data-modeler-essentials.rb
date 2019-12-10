cask 'navicat-data-modeler-essentials' do
  version '3.0.3'
  sha256 '3628ce3e73711e24c9162bc890a453de39b2883fa5a59dc8c4b394274b4acdd8'

  url "http://download3.navicat.com/updater/modeler0#{version.major_minor.no_dots}_ess_mac_en.zip"
  appcast 'https://updater.navicat.com/mac/navicat_updates.php?appName=Navicat%20Data%20Modeler%20Essentials'
  name 'Navicat Data Modeler Essentials'
  homepage 'https://www.navicat.com/en/products/navicat-data-modeler'

  depends_on macos: '>= :yosemite'

  app 'Navicat Data Modeler Essentials.app'
end
