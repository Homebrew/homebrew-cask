cask 'geogebra' do
  version '6.0.348.0'
  sha256 'f63bf6f5f75f571b07832e9b88632259d8491adce8b61dcac8c53d0e4bb95a00'

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-MacOS-Portable-#{version.dots_to_hyphens}.pkg"
  name 'GeoGebra'
  homepage 'https://www.geogebra.org/'

  pkg "GeoGebra-MacOS-Portable-#{version.dots_to_hyphens}.pkg"

  uninstall quit:       'org.geogebra.mathapps',
            login_item: 'GeoGebra',
            pkgutil:    'org.geogebra6.mac'

  zap delete: [
                '~/Library/GeoGebra',
                '~/Library/Preferences/org.geogebra.mathapps.helper.plist',
                '~/Library/Preferences/org.geogebra.mathapps.plist',
                '~/Library/Saved Application State/org.geogebra.mathapps.savedState',
              ]
end
