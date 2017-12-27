cask 'stellarium' do
  version '0.17.0'
  sha256 'dbc04c329ed4d2b4546b15ccbcfb75f986b7db0ee38ce602e82d5598b235b8d6'

  # github.com/Stellarium/stellarium was verified as official when first introduced to the cask
  url "https://github.com/Stellarium/stellarium/releases/download/v#{version}/Stellarium-#{version}.dmg"
  appcast 'https://github.com/Stellarium/stellarium/releases.atom',
          checkpoint: '7951762cbf5665d6780e3315b9d9688a847b72650581e6768f69e7967aec487e'
  name 'Stellarium'
  homepage 'http://stellarium.org/'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
