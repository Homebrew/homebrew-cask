cask 'capto' do
  version '1.2.12,1562218032'
  sha256 'fe53bdb31ff951bd079d2b1ea5ec32d2b41d7e5d3d5ee3ac73addbc3fe1f757a'

  # dl.devmate.com/com.globaldelight.Capto was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Capto/#{version.before_comma}/#{version.after_comma}/Capto-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Capto.xml'
  name 'Capto'
  homepage 'https://www.globaldelight.com/capto/'

  app 'Capto.app'
end
