cask 'filebot' do
  version '4.7'
  sha256 '4f61524ccbfa1be65e3818ba37d983599af67af32cc2dcfd4c8f45d74b394cb2'

  # sourceforge.net/project/filebot was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/project/filebot/filebot/FileBot_#{version}/FileBot_#{version}-brew.tar.bz2"
  appcast 'https://sourceforge.net/projects/filebot/rss',
          checkpoint: 'bc5364d5836beb0b5396ce27c1bb9c28a3502094c2645ae8e97e738bc20bb1cc'
  name 'FileBot'
  homepage 'https://www.filebot.net/'
  license :gpl

  app 'FileBot.app'
  binary "#{appdir}/FileBot.app/Contents/MacOS/filebot.sh", target: 'filebot'

  caveats do
    depends_on_java('8')
  end
end
