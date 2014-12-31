cask :v1 => 'groovesquid' do
  version :latest
  sha256 :no_check

  url 'http://groovesquid.com/download.php?file=Groovesquid.dmg'
  homepage 'http://groovesquid.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Groovesquid.app'
end
