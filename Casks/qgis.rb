cask 'qgis' do
  version '3.10'
  sha256 'c46c05ad0fb175f555401bfc6b5a315ac273ab0d0c355df75958dd909aa8e658'

  url 'https://qgis.org/downloads/macos/qgis-macos-pr.dmg'
  appcast 'https://www.qgis.org/'
  name 'QGIS'
  homepage 'https://www.qgis.org/'

  app "QGIS#{version.major_minor}.app"
end
