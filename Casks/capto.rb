cask 'capto' do
  version '1.2.17'
  sha256 'e2b89df15cd018957ed7de50442d8bf16a501be21c5bb3db29a29388cb362677'

  # d3l6g06uqih57x.cloudfront.net/Captomac was verified as official when first introduced to the cask
  url 'https://d3l6g06uqih57x.cloudfront.net/Captomac/webstore/Capto.dmg'
  appcast 'https://apicapto.globaldelight.net/capto-check-update.php'
  name 'Capto'
  homepage 'https://www.globaldelight.com/capto/'

  app 'Capto.app'
end
