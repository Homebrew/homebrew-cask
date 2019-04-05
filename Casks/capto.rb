cask 'capto' do
  version '1.2.11,1548837086'
  sha256 '8e2e94a6c4d1f0e7abcf3dd26be2317b123a2039c7fdb72fe3c37cb744948ac9'

  # dl.devmate.com/com.globaldelight.Capto was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Capto/#{version.before_comma}/#{version.after_comma}/Capto-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Capto.xml'
  name 'Capto'
  homepage 'https://www.globaldelight.com/capto/'

  app 'Capto.app'
end
