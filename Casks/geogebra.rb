cask 'geogebra' do
  version '6.0.593.0'
  sha256 'ba8e1915139ec023b5631cca2534ed2840b839a83643fcd7d6c23d066a3a6e2d'

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-Classic-#{version.major}-MacOS-Portable-#{version.dots_to_hyphens}.zip"
  appcast "https://download.geogebra.org/installers/#{version.major_minor}/version.txt",
          must_contain: version.dots_to_hyphens
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
