cask :v1 => 'groovesquid' do
  version '0.9.1'
  sha256 'ca6e7278619d8a21906faec6f58cbcc6b5fa6eae30537bf076ff656b102bf9f8'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/groovesquid/groovesquid/releases/download/v#{version}/Groovesquid.dmg"
  appcast 'https://github.com/groovesquid/groovesquid/releases.atom'
  name 'Groovesquid'
  homepage 'http://groovesquid.com/'
  license :gpl

  app 'Groovesquid.app'
end
