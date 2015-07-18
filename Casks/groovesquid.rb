cask :v1 => 'groovesquid' do
  version '0.9.4'
  sha256 '93ad97b25c5065b60cdceae950c21b12d3802480dafbcb3336f3fd3c6dc77ebe'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/groovesquid/groovesquid/releases/download/v#{version}/Groovesquid.dmg"
  appcast 'https://github.com/groovesquid/groovesquid/releases.atom'
  name 'Groovesquid'
  homepage 'https://groovesquid.com/'
  license :gpl

  app 'Groovesquid.app'
end
