cask 'beacon-scanner' do
  version '1.1.12'
  sha256 '5ec6a1d4c38b7ed93e9ec674c50aaceea266a180618d4ced3d8c07c11b001054'

  url "https://github.com/mlwelles/BeaconScanner/releases/download/1.1.2/BeaconScanner-#{version}.zip"
  appcast 'https://github.com/mlwelles/BeaconScanner/releases.atom',
          checkpoint: '53ff673bd7cd8a3bbdb761cd60665c3b96d56980216c228b6f984e26bdd8f939'
  name 'BeaconScanner'
  homepage 'https://github.com/mlwelles/BeaconScanner/'

  app 'Beacon Scanner.app'
end
