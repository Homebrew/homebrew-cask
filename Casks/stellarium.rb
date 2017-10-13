cask 'stellarium' do
  version '0.16.1.2'
  sha256 '273da715fad8752ca3d15911d95eade984bd277321d55dfda69fd9f4abf35d62'

  # sourceforge.net/stellarium was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/stellarium/Stellarium-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/stellarium/rss',
          checkpoint: 'fce3de0c25df487ef7189db5ac2f51af2da6c5cee37f17bb421c5a09171a678e'
  name 'Stellarium'
  homepage 'http://stellarium.org/'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
