cask 'geogebra' do
  version :latest
  sha256 :no_check

  url "https://download.geogebra.org/package/mac-port"
  name 'GeoGebra'
  homepage 'https://www.geogebra.org/'

  app "GeoGebra.app"

  uninstall quit:       'org.geogebra.mathapps',
            login_item: 'GeoGebra'

  zap delete: [
                '~/Library/GeoGebra',
                '~/Library/Preferences/org.geogebra.mathapps.helper.plist',
                '~/Library/Preferences/org.geogebra.mathapps.plist',
                '~/Library/Saved Application State/org.geogebra.mathapps.savedState',
              ]
end
