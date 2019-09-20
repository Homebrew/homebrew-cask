cask 'qgis' do
  version '3.8.3'
  sha256 'd2d421524233ef86e43981ea67357302f4c55df7acda5d6f6f01a89f99330fb8'

  url 'https://qgis.org/downloads/macos/qgis-macos-pr.dmg'
  appcast 'https://www.qgis.org/'
  name 'QGIS'
  homepage 'https://www.qgis.org/'

  app "QGIS#{version.major_minor}.app"
end
