cask 'groovesquid' do
  version :latest
  sha256 :no_check

  url 'https://groovesquid.com/download.php?file=Groovesquid.dmg'
  name 'Groovesquid'
  homepage 'https://groovesquid.com/'
  license :gratis

  app 'Groovesquid.app'
end
