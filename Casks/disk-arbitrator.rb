cask 'disk-arbitrator' do
  version '0.7.0'
  sha256 '1f27fccef99ffa65f4bcf7a266789bb6310aca0063f2accf34703bbf2db09cc8'

  # kainjow.com was verified as official when first introduced to the cask
  url "https://github.com/aburgh/Disk-Arbitrator/releases/download/v#{version}/Disk.Arbitrator-#{version.major_minor}.dmg"
  appcast 'https://github.com/aburgh/Disk-Arbitrator/releases.atom',
          checkpoint: 'f8858ef5754234e6e18aba2a209c53b321fcea92931eefca50476ee3dede1306'
  name 'Disk Arbitrator'
  homepage 'https://github.com/aburgh/Disk-Arbitrator'

  app 'Disk Arbitrator.app'

  uninstall launchctl: 'us.burghardt.Disk-Arbitrator',
            quit:      'us.burghardt.Disk-Arbitrator'

  zap delete: '~/Library/Preferences/us.burghardt.Disk-Arbitrator.plist'
end
