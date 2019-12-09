cask 'qgis' do
  version '3.10'
  sha256 'f5b87076959ea77b97fbb8b20759a0d3bc9ad565578a5ff5b58ddfe8ad03510a'

  url 'https://qgis.org/downloads/macos/qgis-macos-pr.dmg'
  appcast 'https://www.qgis.org/'
  name 'QGIS'
  homepage 'https://www.qgis.org/'

  app "QGIS#{version.major_minor}.app"
end
