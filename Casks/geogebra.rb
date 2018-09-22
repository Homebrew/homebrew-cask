cask 'geogebra' do
  version '6.0.496.0'
  sha256 '6f5425038281de19c681913b6c971f45f88ad9266c378f79050d624290e4c54a'

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
