cask 'qgis' do
  version '3.12.3'
  sha256 'aa709ded441b1a22bc79e0147e4215fbc26e161ec92c3c524d3d0482f717a6e8'

  url 'https://qgis.org/downloads/macos/qgis-macos-pr.dmg'
  appcast 'https://qgis.org/downloads/macos/qgis-macos-pr.sha256sum',
          must_contain: version.dots_to_underscores
  name 'QGIS'
  homepage 'https://www.qgis.org/'

  app "QGIS#{version.major_minor}.app"
end
