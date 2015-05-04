cask :v1 => 'groovesquid' do
  version '0.8.2'
  sha256 '3ad28d5945b8c5f5d7a1cdc540436e77dfbcfb895ecc417cf12d1a6789521928'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/groovesquid/groovesquid/releases/download/v#{version}/Groovesquid.dmg"
  appcast 'https://github.com/groovesquid/groovesquid/releases.atom'
  name 'Groovesquid'
  homepage 'http://groovesquid.com/'
  license :gpl

  app 'Groovesquid.app'
end
