cask 'mancy' do
  version '2.2.2'
  sha256 'c1681881ca93e7e7f20a6b2b9477be4d429246c68aba0e73ba20345b151d3308'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/princejwesley/Mancy/releases/download/v#{version}/Mancy-darwin-x64.zip"
  appcast 'https://github.com/princejwesley/Mancy/releases.atom',
          checkpoint: '25c13ff774c5f24422dc82b8a45f86d7819910531a68f2c2efd34fb71f36b502'
  name 'Mancy'
  homepage 'http://www.mancy-re.pl/'
  license :mit

  app 'Mancy-darwin-x64/Mancy.app'
end
