cask :v1 => 'groovesquid' do
  version :latest
  sha256 :no_check

  url 'http://groovesquid.com/download.php?file=Groovesquid.dmg'
  homepage 'http://groovesquid.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Groovesquid.app'
end
