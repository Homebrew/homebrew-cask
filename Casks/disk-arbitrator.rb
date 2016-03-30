cask 'disk-arbitrator' do
  version '0.5'
  sha256 'dcc05e6579a7ef3835cb06beb4c9e1dcc64f01128e91fc00cfc7e3a00876fd2a'

  # kainjow.com was verified as official when first introduced to the cask
  url "https://kainjow.com/downloads/Disk%20Arbitrator-#{version}.dmg"
  appcast 'https://github.com/aburgh/Disk-Arbitrator/releases.atom',
          checkpoint: 'acc92a7976b5adbe49f46a6846d5ee744aa528731105997d935898e697de143b'
  name 'Disk Arbitrator'
  homepage 'https://github.com/aburgh/Disk-Arbitrator'
  license :bsd

  app 'Disk Arbitrator.app'

  uninstall launchctl: 'us.burghardt.Disk-Arbitrator',
            quit:      'us.burghardt.Disk-Arbitrator'

  zap delete: '~/Library/Preferences/us.burghardt.Disk-Arbitrator.plist'
end
