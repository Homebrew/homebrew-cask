cask 'navicat-data-modeler-essentials' do
  version '3.0.3'
  sha256 'e95d5afe27000c935c406b849772808756540413ec8557fc94798d7188cc9423'

  url "http://download.navicat.com/download/modeleress0#{version.major_minor.no_dots}_en.dmg"
  appcast 'https://www.navicat.com/updater/modeler_v2/sysProfileInfo.php?appName=Navicat%20Data%20Modeler%20Essentials'
  name 'Navicat Data Modeler Essentials'
  homepage 'https://www.navicat.com/en/products/navicat-data-modeler'

  depends_on macos: '>= :yosemite'

  app 'Navicat Data Modeler Essentials.app'
end
