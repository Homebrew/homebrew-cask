cask :v1 => 'groovesquid' do
  version '0.9.2'
  sha256 'caf86c4d0dcbafb141fdaf45361003377ebdaefa0e3173981516e044efab2f4e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/groovesquid/groovesquid/releases/download/v#{version}/Groovesquid.dmg"
  appcast 'https://github.com/groovesquid/groovesquid/releases.atom'
  name 'Groovesquid'
  homepage 'http://groovesquid.com/'
  license :gpl

  app 'Groovesquid.app'
end
