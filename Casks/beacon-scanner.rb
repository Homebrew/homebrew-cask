cask 'beacon-scanner' do
  version '1.11'
  sha256 'd290eb9f83544eef42184f2ad3f0e8d48e4bea44e192bd3dc9fbf57aab45af14'

  url "https://github.com/mlwelles/BeaconScanner/releases/download/#{version}/BeaconScanner-#{version}.zip"
  appcast 'https://github.com/mlwelles/BeaconScanner/releases.atom',
          checkpoint: '9d54970c1dd5706a0206a65ea818d3940bb1f74cb31697a12fba974281a20dc7'
  name 'BeaconScanner'
  homepage 'https://github.com/mlwelles/BeaconScanner/'
  license :mit

  app 'Beacon Scanner.app'
end
