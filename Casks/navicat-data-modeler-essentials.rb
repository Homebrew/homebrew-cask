cask 'navicat-data-modeler-essentials' do
  version '2.1.21'
  sha256 'abd7a616f3514c601610636bea7882ed067a1c0808031a9d4d94ae467ba9237c'

  url "http://download.navicat.com/download/modeleress0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://www.navicat.com/updater/modeler_v2/sysProfileInfo.php?appName=Navicat%20Data%20Modeler%20Essentials'
  name 'Navicat Data Modeler Essentials'
  homepage 'https://www.navicat.com/en/products/navicat-data-modeler'

  depends_on macos: '>= :yosemite'

  app 'Navicat Data Modeler Essentials.app'
end
