cask 'geogebra' do
  version '6.0.355.0'
  sha256 '1773b1bf2654a81d1f152f88d5f9cacb5c58fd821158fcbb441f71445f636c69'

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
