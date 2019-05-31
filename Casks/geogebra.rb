cask 'geogebra' do
  version '6.0.541.0'
  sha256 'fc2b1b8ed46ed67ca130d2fe8a7150c85fbeb0def4fc59cb9f82195315f44789'

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
