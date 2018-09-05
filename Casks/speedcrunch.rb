cask 'speedcrunch' do
  version '0.12'
  sha256 '09a881ef4e5d8ee37f90b5291544fcabeb28c63bc57e6e5eabbd748e09c975be'

  # bitbucket.org/heldercorreia/speedcrunch was verified as official when first introduced to the cask
  url "https://bitbucket.org/heldercorreia/speedcrunch/downloads/SpeedCrunch-#{version}.dmg"
  name 'SpeedCrunch'
  homepage 'http://www.speedcrunch.org/'

  app 'SpeedCrunch.app'
end
