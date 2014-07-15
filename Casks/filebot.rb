class Filebot < Cask
  version '4.2'
  sha256 'f073ae7c56d49212cc33687f22c74510b31af3df3f5fb1db85c88d42b264e6cd'

  homepage 'http://www.filebot.net/'
  url "https://downloads.sourceforge.net/project/filebot/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.gz"

  link 'FileBot.app'
  binary 'FileBot.app/Contents/MacOS/filebot.sh', :target => 'filebot'
  caveats 'FileBot requires Java 8. Run `java -version` to verify.'
end
