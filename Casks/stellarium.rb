cask 'stellarium' do
  version '0.16.1.1'
  sha256 '2c9c54724720ed5cf1f5263af8a50c9ebcf2e69d8fa4fcdfaed83d2ced0c2ae8'

  # sourceforge.net/stellarium was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/stellarium/Stellarium-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/stellarium/rss',
          checkpoint: '1f39827e6294cfd1b623d2999d3e7fe66d6e3917b4c4cd1cb199e7dec4082f44'
  name 'Stellarium'
  homepage 'http://stellarium.org/'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
