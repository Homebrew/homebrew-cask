cask 'capto' do
  version '1.2.16'
  sha256 '4e95462dbe07d433d55d2607cfc20ed35831bf28afd1d6a3581bbf377a551fda'

  # d3l6g06uqih57x.cloudfront.net/Captomac was verified as official when first introduced to the cask
  url 'https://d3l6g06uqih57x.cloudfront.net/Captomac/webstore/Capto.dmg'
  appcast 'https://apicapto.globaldelight.net/capto-check-update.php'
  name 'Capto'
  homepage 'https://www.globaldelight.com/capto/'

  app 'Capto.app'
end
