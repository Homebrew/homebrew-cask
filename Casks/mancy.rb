cask 'mancy' do
  version '2.2.2'
  sha256 'c1681881ca93e7e7f20a6b2b9477be4d429246c68aba0e73ba20345b151d3308'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/princejwesley/Mancy/releases/download/v#{version}/Mancy-darwin-x64.zip"
  appcast 'https://github.com/princejwesley/Mancy/releases.atom',
          checkpoint: 'b41c7dc133800e0346e4e12d9ebb8d361b527e03cf6ea45d427a71aba46e153f'
  name 'Mancy'
  homepage 'http://www.mancy-re.pl/'
  license :mit

  app 'Mancy-darwin-x64/Mancy.app'
end
