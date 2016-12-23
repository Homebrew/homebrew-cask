cask 'angry-ip-scanner' do
  version '3.5'
  sha256 '74b61c34014cb422b0eee3c53b32cde42a911c53bdfe80e074546fb26376628b'

  # github.com/angryziber/ipscan was verified as official when first introduced to the cask
  url "https://github.com/angryziber/ipscan/releases/download/#{version}/ipscan-mac-#{version}.zip"
  appcast 'https://github.com/angryziber/ipscan/releases.atom',
          checkpoint: '2390c686f215e80608734fbf5e1b6747968205633f72f2347d16ba307239d006'
  name 'Angry IP Scanner'
  homepage 'http://angryip.org/'

  app 'Angry IP Scanner.app'
end
