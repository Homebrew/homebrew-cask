cask 'stellarium' do
  version '0.15.2'
  sha256 'c3764943e2b5ec3286f1a5737dbce22879710a8ad611df5f846bbd39459ba7ad'

  # sourceforge.net/stellarium was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/stellarium/Stellarium-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/stellarium/rss',
          checkpoint: '416450e25bbc60b111694d05e8bf06430f95ced71b5dd09dee6d397d988f1166'
  name 'Stellarium'
  homepage 'http://stellarium.org/'

  app 'Stellarium.app'

  zap delete: '~/Library/Preferences/Stellarium'
end
