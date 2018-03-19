cask 'printopia' do
  version '3.0.8'
  sha256 '15fdc67703465137512bb902254ba04fb80472f05ad7358f2cf22316c35f5b9e'

  url "https://download.decisivetactics.com/products/printopia/dl/Printopia_#{version}.zip"
  name 'Printopia'
  homepage 'https://www.decisivetactics.com/products/printopia/'

  app 'Printopia.app'

  zap trash: '~/Library/Preferences/com.ecamm.printopia.plist'
end
