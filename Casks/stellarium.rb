cask 'stellarium' do
  version '0.14.3'
  sha256 'f8d0c80abbde2d9e76a222ff3fc0e0bd63b4cdb661688794fb241d055e274acf'

  # sourceforge.net/sourceforge/stellarium was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/stellarium/Stellarium-#{version}.dmg"
  name 'Stellarium'
  homepage 'http://stellarium.org/'
  license :gpl

  app 'Stellarium.app'
end
