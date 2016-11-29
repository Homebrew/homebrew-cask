cask 'printopia' do
  version '2.1.20'
  sha256 'b42926cacbfa5ccdfcb99234d7012cc2e0173999493f5833ffd38f3e56dcb698'

  url "https://download.decisivetactics.com/products/printopia/dl/Printopia_#{version}.zip"
  name 'Printopia'
  homepage 'https://www.decisivetactics.com/products/printopia/'

  prefpane 'Printopia/Install Printopia.app/Contents/Resources/Printopia.prefPane'

  zap delete: '~/Library/Preferences/com.ecamm.printopia.plist'
end
