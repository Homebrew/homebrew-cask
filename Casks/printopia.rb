cask 'printopia' do
  version '3.0.8'
  sha256 '458585dbcd0aa683801c8ad9020c57e0f407cc98d3f74a5ea1558ddf4254e73c'

  url "https://www.decisivetactics.com/products/printopia/dl/Printopia_#{version}.zip"
  name 'Printopia'
  homepage 'https://www.decisivetactics.com/products/printopia/'

  app 'Printopia.app'

  zap trash: '~/Library/Preferences/com.ecamm.printopia.plist'
end
