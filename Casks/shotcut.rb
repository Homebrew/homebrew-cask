cask 'shotcut' do
  version '18.01.02'
  sha256 '12ee301b211dba6d0aa062587d0ec2e673980570273faeb41b25083b5cdd49c9'

  # github.com/mltframework/shotcut was verified as official when first introduced to the cask
  url "https://github.com/mltframework/shotcut/releases/download/v#{version.major_minor}/shotcut-osx-x86_64-#{version.no_dots}.dmg"
  appcast 'https://github.com/mltframework/shotcut/releases.atom',
          checkpoint: '81e23e46cd9363d1b519dd1c755960501e66dcac70cf73b269930108356de701'
  name 'Shotcut'
  homepage 'https://www.shotcut.org/'

  app 'Shotcut.app'
end
