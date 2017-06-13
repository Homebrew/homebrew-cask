cask 'capto' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.globaldelight.Capto/Capto.dmg was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.globaldelight.Capto/Capto.dmg'
  name 'Capto'
  homepage 'http://www.globaldelight.com/capto/'

  app 'Capto.app'
end
