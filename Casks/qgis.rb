cask 'qgis' do
  version '3.12.2'
  sha256 'f7a61f85f4f278eb45d5a84483bea0ca57b344b4ed6f12d3d507927d7ce97234'

  url 'https://qgis.org/downloads/macos/qgis-macos-pr.dmg'
  appcast 'https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum',
          configuration: version.dots_to_underscores
  name 'QGIS'
  homepage 'https://www.qgis.org/'

  app "QGIS#{version.major_minor}.app"
end
