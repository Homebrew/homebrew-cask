cask 'capto' do
  version '1.2.9,1519212504'
  sha256 '18594a1f435560cafd40d3b1db3416f0f504becd83cad4db97f716885af2ea27'

  # dl.devmate.com/com.globaldelight.Capto was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Capto/#{version.before_comma}/#{version.after_comma}/Capto-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Capto.xml'
  name 'Capto'
  homepage 'https://www.globaldelight.com/capto/'

  app 'Capto.app'
end
