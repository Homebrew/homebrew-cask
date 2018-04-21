cask 'printopia' do
  version '3.0.9'
  sha256 '1dc382756d3efbb9ec87e74c683ba4b79c2e39b5a0043b04300eed2cdcc7836d'

  url "https://www.decisivetactics.com/products/printopia/dl/Printopia_#{version}.zip"
  name 'Printopia'
  homepage 'https://www.decisivetactics.com/products/printopia/'

  app 'Printopia.app'

  zap trash: '~/Library/Preferences/com.ecamm.printopia.plist'
end
