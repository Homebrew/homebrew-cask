cask 'stellarium' do
  version '0.15.1'
  sha256 'e2f3464ddd25730feaf6aaa38a0bc38c9d184395a44f3fdaff642211b75257c7'

  # sourceforge.net/stellarium was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/stellarium/Stellarium-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/stellarium/rss',
          checkpoint: 'e7afa0d2187809ba363c63693b4b84230fd0ea326c6f09a3c36fd3d1205983fe'
  name 'Stellarium'
  homepage 'http://stellarium.org/'

  app 'Stellarium.app'

  zap delete: '~/Library/Preferences/Stellarium'
end
