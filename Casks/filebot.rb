cask 'filebot' do
  version '4.7'
  sha256 '4f61524ccbfa1be65e3818ba37d983599af67af32cc2dcfd4c8f45d74b394cb2'

  # sourceforge.net/filebot was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filebot/filebot/FileBot_#{version}/FileBot_#{version}-brew.tar.bz2"
  appcast 'https://sourceforge.net/projects/filebot/rss?path=/filebot',
          checkpoint: '099c11dd4063a56f9dd1ed4ed9cb3e63052e6503e9f14424279bcd497bb18a0b'
  name 'FileBot'
  homepage 'https://www.filebot.net/'
  license :gpl

  app 'FileBot.app'
  binary "#{appdir}/FileBot.app/Contents/MacOS/filebot.sh", target: 'filebot'

  caveats do
    depends_on_java('8')
  end
end
