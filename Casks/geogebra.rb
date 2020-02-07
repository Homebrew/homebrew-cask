cask 'geogebra' do
  version '6.0.573.0'
  sha256 'a7fbd0f5bf5937142bfa63d144faebc532e8cf1a5835f52e23aa48b82f73706e'

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
