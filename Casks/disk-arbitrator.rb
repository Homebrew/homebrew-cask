cask 'disk-arbitrator' do
  version '0.8.0'
  sha256 '4dd2467c4a3a896ae0267087fe11df7bfc9d98c9f1bc049f401b58a59fca8533'

  # kainjow.com was verified as official when first introduced to the cask
  url "https://github.com/aburgh/Disk-Arbitrator/releases/download/v#{version}/Disk.Arbitrator-#{version.major_minor}.dmg"
  appcast 'https://github.com/aburgh/Disk-Arbitrator/releases.atom',
          checkpoint: '2f0e338fe6f6b7d0adcfe2202b237154b94a0c041a2e8c233dcfb56e5330e243'
  name 'Disk Arbitrator'
  homepage 'https://github.com/aburgh/Disk-Arbitrator'

  app 'Disk Arbitrator.app'

  uninstall launchctl: 'us.burghardt.Disk-Arbitrator',
            quit:      'us.burghardt.Disk-Arbitrator'

  zap trash: '~/Library/Preferences/us.burghardt.Disk-Arbitrator.plist'
end
