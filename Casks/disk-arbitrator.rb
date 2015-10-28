cask :v1 => 'disk-arbitrator' do
  version '0.5'
  sha256 'dcc05e6579a7ef3835cb06beb4c9e1dcc64f01128e91fc00cfc7e3a00876fd2a'

  # kainjow.com is the official download host per the vendor homepage
  url "https://kainjow.com/downloads/Disk%20Arbitrator-#{version}.dmg"
  name 'Disk Arbitrator'
  homepage 'https://github.com/aburgh/Disk-Arbitrator'
  license :bsd

  app 'Disk Arbitrator.app'

  uninstall :launchctl => 'us.burghardt.Disk-Arbitrator',
            :quit => 'us.burghardt.Disk-Arbitrator'

  zap :delete => '~/Library/Preferences/us.burghardt.Disk-Arbitrator.plist'
end
