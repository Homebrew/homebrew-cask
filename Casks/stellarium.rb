cask 'stellarium' do
  version '0.14.2'
  sha256 '6367e9d77743312fe638fa12965afbfb520dbe64228f9d24f952928bcaaa0fe3'

  # sourceforge.net/sourceforge/stellarium was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/stellarium/Stellarium-#{version}.dmg"
  name 'Stellarium'
  homepage 'http://stellarium.org/'
  license :gpl

  app 'Stellarium.app'
end
