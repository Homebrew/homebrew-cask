cask 'mancy' do
  version '2.2.0'
  sha256 '50ad7a9016dc2436e70f86612b270c79795982eafe21a58071702f6313471f5a'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/princejwesley/Mancy/releases/download/v#{version}/Mancy-darwin-x64.zip"
  appcast 'https://github.com/princejwesley/Mancy/releases.atom',
          checkpoint: '013fc463156d88a8def8a80ff5468cf7c267d465f6c9456ea66d3bf2a9777c87'
  name 'Mancy'
  homepage 'http://www.mancy-re.pl/'
  license :mit

  app 'Mancy-darwin-x64/Mancy.app'
end
