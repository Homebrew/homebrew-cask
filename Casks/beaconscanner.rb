cask 'beaconscanner' do
  version '1.1.8'
  sha256 '85cc1c4d8ebec7f3c2e93ca2810c95de03bdc7996dc3431b6d3d85480d26bc39'

  url "https://github.com/mlwelles/BeaconScanner/releases/download/#{version}/BeaconScanner-#{version}.zip"
  appcast 'https://github.com/mlwelles/BeaconScanner/releases.atom',
          checkpoint: '30fe0b1aa49f79e64712d6e1b72eff566685639aa58a45c9910768ffd3235e0f'
  name 'BeaconScanner'
  homepage 'https://github.com/mlwelles/BeaconScanner/'
  license :mit

  app 'BeaconScanner.app'
end
