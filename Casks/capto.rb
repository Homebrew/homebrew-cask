cask 'capto' do
  version '1.2.15,1575375754'
  sha256 'af7fdda852eb242ee3358d2f06b758d1241de524887067658129be1eec735040'

  # dl.devmate.com/com.globaldelight.Capto was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Capto/#{version.before_comma}/#{version.after_comma}/Capto-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Capto.xml'
  name 'Capto'
  homepage 'https://www.globaldelight.com/capto/'

  app 'Capto.app'
end
