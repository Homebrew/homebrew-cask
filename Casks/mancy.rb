cask :v1 => 'mancy' do
  version '2.1.0'
  sha256 '080fefad737118e90ec594f5a486fd11fe038db815e6b911706af6eea9f033b6'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/princejwesley/Mancy/releases/download/v#{version}/Mancy-darwin-x64.zip"
  name 'Mancy'
  homepage 'http://www.mancy-re.pl/'
  license :mit

  app 'Mancy-darwin-x64/Mancy.app'
end
