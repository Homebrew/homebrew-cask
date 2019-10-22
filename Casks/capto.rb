cask 'capto' do
  version '1.2.13,1569828501'
  sha256 '29cf048af3524b0c7409702178386192a3ac42bcc0039f9cd50313fc6acf4368'

  # dl.devmate.com/com.globaldelight.Capto was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.globaldelight.Capto/#{version.before_comma}/#{version.after_comma}/Capto-#{version.before_comma}.dmg"
  appcast 'https://updates.devmate.com/com.globaldelight.Capto.xml'
  name 'Capto'
  homepage 'https://www.globaldelight.com/capto/'

  app 'Capto.app'
end
