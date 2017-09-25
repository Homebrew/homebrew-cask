cask 'stellarium' do
  version '0.16.1'
  sha256 '938ef9e99dfcb403ee6cd4a6708bdfbaf3196d682513e32688cd05ab045fe75d'

  # sourceforge.net/stellarium was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/stellarium/Stellarium-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/stellarium/rss',
          checkpoint: '9b8b8e21e413a85e3413bb2426465c4ce195c5e7865be1037c30dbc223b77b2c'
  name 'Stellarium'
  homepage 'http://stellarium.org/'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
