cask :v1 => 'filebot' do
  version '4.5'
  sha256 '43f461ffdca299f5a329defb5360992b57930daaa14d46102cb859ec80a5366e'

  url "https://downloads.sourceforge.net/project/filebot/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.gz"
  homepage 'http://www.filebot.net/'
  license :oss

  app 'FileBot.app'
  binary 'FileBot.app/Contents/MacOS/filebot.sh', :target => 'filebot'
  caveats 'FileBot requires Java 8. Run "java -version" to verify.'
end
