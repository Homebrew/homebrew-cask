class Filebot < Cask
  version '4.5'
  sha256 '09c14822caca17c1c629101d3f05d3059b5f07653b956397416ba40c587da66d'

  url "https://downloads.sourceforge.net/project/filebot/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.gz"
  homepage 'http://www.filebot.net/'
  license :oss

  app 'FileBot.app'
  binary 'FileBot.app/Contents/MacOS/filebot.sh', :target => 'filebot'
  caveats 'FileBot requires Java 8. Run "java -version" to verify.'
end
