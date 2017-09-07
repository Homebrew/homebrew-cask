cask 'beacon-scanner' do
  version '1.1.13'
  sha256 '5b28a510f557e57e5cf48490e982aadaba1676c34192e7d650da110a88d233bd'

  url "https://github.com/mlwelles/BeaconScanner/releases/download/#{version}/Beacon.Scanner.zip"
  appcast 'https://github.com/mlwelles/BeaconScanner/releases.atom',
          checkpoint: 'bd753dc63baf03d9a954bdf044848959520b948219e578fc3a98599df138bb71'
  name 'BeaconScanner'
  homepage 'https://github.com/mlwelles/BeaconScanner/'

  app 'Beacon Scanner.app'
end
