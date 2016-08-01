cask 'filebot' do
  version '4.7.1'
  sha256 'a2bb68355f542ce36e562e5f8f4dbccc0d053c4a5a296e85a09f44ca6967e629'

  # sourceforge.net/filebot was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filebot/filebot/FileBot_#{version}/FileBot_#{version}-brew.tar.bz2"
  appcast 'https://sourceforge.net/projects/filebot/rss?path=/filebot',
          checkpoint: '099c11dd4063a56f9dd1ed4ed9cb3e63052e6503e9f14424279bcd497bb18a0b'
  name 'FileBot'
  homepage 'https://www.filebot.net/'
  license :gpl

  app "FileBot_#{version}-brew.app", target: 'FileBot-brew.app'
  binary "#{appdir}/FileBot-brew.app/Contents/MacOS/filebot.sh", target: 'filebot'

  caveats do
    depends_on_java('8')
  end
end
