cask 'stellarium' do
  version '0.17.0.1'
  sha256 '729efdfcaa769cd168345957b5d0649208f6520fc9dc9ed1ecb26c2713b67e51'

  # github.com/Stellarium/stellarium was verified as official when first introduced to the cask
  url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor_patch}/Stellarium-#{version}.dmg"
  appcast 'https://github.com/Stellarium/stellarium/releases.atom',
          checkpoint: '7951762cbf5665d6780e3315b9d9688a847b72650581e6768f69e7967aec487e'
  name 'Stellarium'
  homepage 'http://stellarium.org/'

  app 'Stellarium.app'

  zap trash: '~/Library/Preferences/Stellarium'
end
