cask 'mancy' do
  version '3.0.0'
  sha256 '1e0df709ea909d1e2ec88f5a2bedb4b71d4c75ce0d1e67b909d0b02671af6ee6'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/princejwesley/Mancy/releases/download/v#{version}/Mancy-darwin-x64.zip"
  appcast 'https://github.com/princejwesley/Mancy/releases.atom',
          checkpoint: '2060ba97dc18075843a5d0908b73674a8f81412982e6a08b7d3db616dcc963f5'
  name 'Mancy'
  homepage 'http://www.mancy-re.pl/'
  license :mit

  app 'Mancy-darwin-x64/Mancy.app'
end
