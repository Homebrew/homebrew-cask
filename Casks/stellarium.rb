cask 'stellarium' do
  version '0.20.1'
  sha256 '154e4a61cea2225e93626077fd7d22f49706c84fa7dd56f51bc3bded84f9d0ce'

  # github.com/Stellarium/stellarium/ was verified as official when first introduced to the cask
  url "https://github.com/Stellarium/stellarium/releases/download/v#{version}/Stellarium-#{version}.zip"
  appcast 'https://github.com/Stellarium/stellarium/releases.atom'
  name 'Stellarium'
  homepage 'https://stellarium.org/'

  depends_on macos: '>= :sierra'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
