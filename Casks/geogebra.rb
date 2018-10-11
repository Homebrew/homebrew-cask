cask 'geogebra' do
  version '6.0.498.0'
  sha256 '8b1884648df0d94660ff58b83eb86662157ea6dfdbcb382977a14202df6e4a7d'

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-Classic-6-MacOS-Portable-#{version.dots_to_hyphens}.zip"
  name 'GeoGebra'
  homepage 'https://www.geogebra.org/'

  app "GeoGebra Classic #{version.major}.app"

  uninstall quit:       'org.geogebra.mathapps',
            login_item: 'GeoGebra',
            pkgutil:    'org.geogebra6.mac'

  zap trash: [
               '~/Library/GeoGebra',
               '~/Library/Preferences/org.geogebra.mathapps.helper.plist',
               '~/Library/Preferences/org.geogebra.mathapps.plist',
               '~/Library/Saved Application State/org.geogebra.mathapps.savedState',
             ]
end
