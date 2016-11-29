cask 'stellarium' do
  version '0.14.3'
  sha256 'f8d0c80abbde2d9e76a222ff3fc0e0bd63b4cdb661688794fb241d055e274acf'

  # sourceforge.net/stellarium was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/stellarium/Stellarium-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/stellarium/rss',
          checkpoint: '31520cf00b42ee13b6dcdbdb07677399d333bd48c28ec2f8aad23eb617896294'
  name 'Stellarium'
  homepage 'http://stellarium.org/'

  app 'Stellarium.app'

  zap delete: '~/Library/Preferences/Stellarium'
end
