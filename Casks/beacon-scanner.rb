cask 'beacon-scanner' do
  version '1.1.13'
  sha256 '5b28a510f557e57e5cf48490e982aadaba1676c34192e7d650da110a88d233bd'

  url "https://github.com/mlwelles/BeaconScanner/releases/download/#{version}/Beacon.Scanner.zip"
  appcast 'https://github.com/mlwelles/BeaconScanner/releases.atom',
          checkpoint: '0d519e3cfa636ace2d9c385d70cea818ec9f5c325a2f4521278fb6c44f09de5e'
  name 'BeaconScanner'
  homepage 'https://github.com/mlwelles/BeaconScanner/'

  app 'Beacon Scanner.app'
end
