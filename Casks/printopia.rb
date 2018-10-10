cask 'printopia' do
  version '3.0.12'
  sha256 '82176d21ab869bc132f6776200c51fce8ac8273c579d6ae339c6989addde4c65'

  url "https://www.decisivetactics.com/products/printopia/dl/Printopia_#{version}.zip"
  name 'Printopia'
  homepage 'https://www.decisivetactics.com/products/printopia/'

  app 'Printopia.app'

  zap trash: '~/Library/Preferences/com.ecamm.printopia.plist'
end
