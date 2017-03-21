cask 'geogebra' do
  version '6.0.295.0'
  sha256 '597bd732b3096defd129501b4dcd0282cb257cb82c495a4006cef3c8cdc30a72'

  url "https://download.geogebra.org/installers/#{version.major_minor}/GeoGebra-MacOS-Portable-#{version.dots_to_hyphens}.zip"
  name 'GeoGebra'
  homepage 'https://www.geogebra.org/'

  app 'GeoGebra.app'

  uninstall quit:       'org.geogebra.mathapps',
            login_item: 'GeoGebra'

  zap delete: [
                '~/Library/GeoGebra',
                '~/Library/Preferences/org.geogebra.mathapps.helper.plist',
                '~/Library/Preferences/org.geogebra.mathapps.plist',
                '~/Library/Saved Application State/org.geogebra.mathapps.savedState',
              ]
end
