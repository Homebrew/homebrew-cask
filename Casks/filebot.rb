cask 'filebot' do
  version '4.7'
  sha256 '4f61524ccbfa1be65e3818ba37d983599af67af32cc2dcfd4c8f45d74b394cb2'

  # sourceforge.net/project/filebot was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/filebot/filebot/FileBot_#{version}/FileBot_#{version}-brew.tar.bz2"
  name 'FileBot'
  homepage 'https://www.filebot.net/'
  license :gpl

  app 'FileBot.app'
  binary 'FileBot.app/Contents/MacOS/filebot.sh', target: 'filebot'

  caveats do
    depends_on_java('8')
  end
end
