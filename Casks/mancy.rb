cask :v1 => 'mancy' do
  version '2.0.1'
  sha256 '8b7bc2f2879469b8a7c425f4be1b861d8d3471a55b2e759d542d1b8d0d33ad69'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/princejwesley/Mancy/releases/download/v#{version}/Mancy-darwin-x64.zip"
  name 'Mancy'
  homepage 'http://www.mancy-re.pl/'
  license :mit

  app 'Mancy-darwin-x64/Mancy.app'
end
