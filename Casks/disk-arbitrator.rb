cask 'disk-arbitrator' do
  version '0.7.0'
  sha256 '1f27fccef99ffa65f4bcf7a266789bb6310aca0063f2accf34703bbf2db09cc8'

  # kainjow.com was verified as official when first introduced to the cask
  url "https://github.com/aburgh/Disk-Arbitrator/releases/download/v#{version}/Disk.Arbitrator-#{version.major_minor}.dmg"
  appcast 'https://github.com/aburgh/Disk-Arbitrator/releases.atom',
          checkpoint: '982ad9843fdc9cf39b31d45010a9eab3ffe07fb71156759ba2a667d7e9923a51'
  name 'Disk Arbitrator'
  homepage 'https://github.com/aburgh/Disk-Arbitrator'

  app 'Disk Arbitrator.app'

  uninstall launchctl: 'us.burghardt.Disk-Arbitrator',
            quit:      'us.burghardt.Disk-Arbitrator'

  zap trash: '~/Library/Preferences/us.burghardt.Disk-Arbitrator.plist'
end
