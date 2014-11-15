cask :v1 => 'beacon-scanner' do
  version '1.1.5'
  sha256 '1c7662420ab616004e0f76320b76bf9ee5c3c75292c553bc891ac4986208bbb4'

  url "https://github.com/mlwelles/BeaconScanner/releases/download/#{version}/BeaconScanner.zip"
  homepage 'https://github.com/mlwelles/BeaconScanner/'
  license :mit

  app 'Beacon Scanner.app'
end
