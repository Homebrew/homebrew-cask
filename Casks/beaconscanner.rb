cask :v1 => 'beaconscanner' do
  version '1.1.8'
  sha256 '85cc1c4d8ebec7f3c2e93ca2810c95de03bdc7996dc3431b6d3d85480d26bc39'

  url "https://github.com/mlwelles/BeaconScanner/releases/download/#{version}/BeaconScanner-#{version}.zip"
  appcast 'https://github.com/mlwelles/BeaconScanner/releases.atom'
  name 'BeaconScanner'
  homepage 'https://github.com/mlwelles/BeaconScanner/'
  license :mit

  app 'BeaconScanner.app'
end
