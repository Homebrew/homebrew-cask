cask :v1 => 'groovesquid' do
  version :latest
  sha256 :no_check

  # github.com is the official download host per the vendor homepage
  url 'http://groovesquid.com/download.php?file=Groovesquid.dmg'
  name 'Groovesquid'
  homepage 'https://groovesquid.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Groovesquid.app'
end
