cask 'capto' do
  version '1.2.14,1573107815'
  sha256 '80c897ea857ec0273f8e99a2a48c7a1bed9d526f81fdf1772c4fa4ebf8c542e7'

  # dl.devmate.com/com.globaldelight.Capto was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Capto/#{version.before_comma}/#{version.after_comma}/Capto-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Capto.xml'
  name 'Capto'
  homepage 'https://www.globaldelight.com/capto/'

  app 'Capto.app'
end
