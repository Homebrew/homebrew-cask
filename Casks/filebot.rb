cask 'filebot' do
  version '4.8.2'
  sha256 '1392977186771075a23ff9758fa5f4f3eb1229df0674a43ec7cb8b8a8b737777'

  url "https://get.filebot.net/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.xz"
  appcast 'https://app.filebot.net/update.xml'
  name 'FileBot'
  homepage 'https://www.filebot.net/'
  gpg "#{url}.asc", key_url: 'https://raw.githubusercontent.com/filebot/plugins/master/gpg/maintainer.pub'

  app 'FileBot.app'
  binary "#{appdir}/FileBot.app/Contents/MacOS/filebot.sh", target: 'filebot'

  zap trash: '~/Library/Preferences/net.filebot.ui.plist'

  caveats do
    depends_on_java '10+'
  end
end
