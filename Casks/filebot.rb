cask 'filebot' do
  version '4.7.1'
  sha256 'a2bb68355f542ce36e562e5f8f4dbccc0d053c4a5a296e85a09f44ca6967e629'

  # sourceforge.net/filebot was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/filebot/filebot/FileBot_#{version}/FileBot_#{version}-brew.tar.bz2"
  appcast 'https://sourceforge.net/projects/filebot/rss?path=/filebot',
          checkpoint: 'b4e8425a3bd238b782cb08efa8793e17a29e76d0cc7e5d6880db4e628ef4630a'
  name 'FileBot'
  homepage 'https://www.filebot.net/'
  license :gpl

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app "FileBot_#{version}-brew.app", target: 'FileBot.app'
  binary "#{appdir}/FileBot.app/Contents/MacOS/filebot.sh", target: 'filebot'

  caveats do
    depends_on_java('8')
  end
end
