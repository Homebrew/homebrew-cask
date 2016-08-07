cask 'disk-arbitrator' do
  version '0.6.0'
  sha256 '6e8deeb682e54475d3aef501031336a63feb9ea7c585d3bfe3f722a6a2dc8b81'

  # kainjow.com was verified as official when first introduced to the cask
  url "https://github.com/aburgh/Disk-Arbitrator/releases/download/v#{version}/Disk.Arbitrator-#{version.major_minor}.dmg"
  appcast 'https://github.com/aburgh/Disk-Arbitrator/releases.atom',
          checkpoint: '821fe9fe87d8d201c0e724e03cb5425a09ec52890e076e58d7aa37662bf30ad3'
  name 'Disk Arbitrator'
  homepage 'https://github.com/aburgh/Disk-Arbitrator'
  license :bsd

  app 'Disk Arbitrator.app'

  uninstall launchctl: 'us.burghardt.Disk-Arbitrator',
            quit:      'us.burghardt.Disk-Arbitrator'

  zap delete: '~/Library/Preferences/us.burghardt.Disk-Arbitrator.plist'
end
