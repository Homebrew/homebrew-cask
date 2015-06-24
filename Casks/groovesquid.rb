cask :v1 => 'groovesquid' do
  version '0.9.3'
  sha256 '5f7ad6c6ae6e47b993b6209021a12dfbba62a169a4cee7192e1b434319f43639'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/groovesquid/groovesquid/releases/download/v#{version}/Groovesquid.dmg"
  appcast 'https://github.com/groovesquid/groovesquid/releases.atom'
  name 'Groovesquid'
  homepage 'http://groovesquid.com/'
  license :gpl

  app 'Groovesquid.app'
end
