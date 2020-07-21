cask 'qgis' do
  version '3.14.1'
  sha256 '9ff7dd12c37dd748190fd32d9223bc041850732c7377291b31cc02a9ba178625'

  url 'https://qgis.org/downloads/macos/qgis-macos-pr.dmg'
  appcast 'https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum',
          must_contain: version.dots_to_underscores
  name 'QGIS'
  homepage 'https://www.qgis.org/'

  app "QGIS#{version.major_minor}.app"
end
