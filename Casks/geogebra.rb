cask 'geogebra' do
  version '6.0.562.0'
  sha256 '04b004efd13584d037bcf1aafb0b19c9ac939dd54c4ce94bd0f94bc1b5eb5c58'

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-Classic-6-MacOS-Portable-#{version.dots_to_hyphens}.zip"
  appcast "https://download.geogebra.org/installers/#{version.major_minor}/version.txt",
          configuration: version.dots_to_hyphens
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
