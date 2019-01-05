cask 'capto' do
  version '1.2.10,1541678419'
  sha256 '41a5c554791dd4432e9ede6923e2c40e7d0e2839fc2f970e69648a9c21a1f604'

  # dl.devmate.com/com.globaldelight.Capto was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Capto/#{version.before_comma}/#{version.after_comma}/Capto-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Capto.xml'
  name 'Capto'
  homepage 'https://www.globaldelight.com/capto/'

  app 'Capto.app'
end
