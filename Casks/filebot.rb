cask :v1 => 'filebot' do
  version '4.5.6'
  sha256 '94ebf2233b771cc1641abc9899069f6a37834df998e6081c1ab617676f6fea7d'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/filebot/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.gz"
  homepage 'http://www.filebot.net/'
  license :oss

  app 'FileBot.app'
  binary 'FileBot.app/Contents/MacOS/filebot.sh', :target => 'filebot'
  caveats 'FileBot requires Java 8. Run "java -version" to verify.'
end
