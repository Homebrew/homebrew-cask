cask :v1 => 'filebot' do
  version '4.5.3'
  sha256 'ef6fc006416e5b07a561ac35495c09928f4da6c9dcf38b9c5cf0eea5843f5199'

  url "https://downloads.sourceforge.net/project/filebot/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.gz"
  homepage 'http://www.filebot.net/'
  license :oss

  app 'FileBot.app'
  binary 'FileBot.app/Contents/MacOS/filebot.sh', :target => 'filebot'
  caveats 'FileBot requires Java 8. Run "java -version" to verify.'
end
