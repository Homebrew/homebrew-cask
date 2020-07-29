cask 'qgis' do
  version '3.14.0'
  sha256 '28747af476513f1beeb1c4c22af51a55e0ea7d5dac33d8b3cc568de1c05b68d2'

  url 'https://qgis.org/downloads/macos/qgis-macos-pr.dmg'
  appcast 'https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum',
          must_contain: version.dots_to_underscores
  name 'QGIS'
  homepage 'https://www.qgis.org/'

  app "QGIS#{version.major_minor}.app"
end
