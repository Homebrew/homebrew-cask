cask 'printopia' do
  version '2.1.23'
  sha256 '33d84e32df0222f55619aea2180b4df49dba592135cc13beafd2eac3726dc817'

  url "https://download.decisivetactics.com/products/printopia/dl/Printopia_#{version}.zip"
  name 'Printopia'
  homepage 'https://www.decisivetactics.com/products/printopia/'

  prefpane 'Printopia/Install Printopia.app/Contents/Resources/Printopia.prefPane'

  zap delete: '~/Library/Preferences/com.ecamm.printopia.plist'
end
