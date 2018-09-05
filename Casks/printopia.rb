cask 'printopia' do
  version '3.0.11'
  sha256 '8f659b5a720e412cf72fdc432bace7b6159033ce39c8204f57b65b382af2f1e1'

  url "https://www.decisivetactics.com/products/printopia/dl/Printopia_#{version}.zip"
  name 'Printopia'
  homepage 'https://www.decisivetactics.com/products/printopia/'

  app 'Printopia.app'

  zap trash: '~/Library/Preferences/com.ecamm.printopia.plist'
end
