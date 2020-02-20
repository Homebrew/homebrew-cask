cask 'capto' do
  version :latest
  sha256 :no_check

  # d3l6g06uqih57x.cloudfront.net/Captomac was verified as official when first introduced to the cask
  url 'https://d3l6g06uqih57x.cloudfront.net/Captomac/webstore/Capto.dmg'
  name 'Capto'
  homepage 'https://www.globaldelight.com/capto/'

  app 'Capto.app'
end
