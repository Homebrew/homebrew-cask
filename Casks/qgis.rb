cask 'qgis' do
  version '3.12.1'
  sha256 '69cc98ac7017f62aa16b14c6e8b5743f5abc7d073643a428e45363300d15c110'

  url 'https://qgis.org/downloads/macos/qgis-macos-pr.dmg'
  appcast 'https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum',
          configuration: version.dots_to_underscores
  name 'QGIS'
  homepage 'https://www.qgis.org/'

  app "QGIS#{version.major_minor}.app"
end
