cask 'geogebra' do
  version '6.0.392.0'
  sha256 'cd8fc070d530dd515eb7ee793ba74a8027adbb60299ef51c23d8107efd914238'

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
