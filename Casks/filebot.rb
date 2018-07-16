cask 'filebot' do
  version '4.8.2'
  sha256 '20cd5761bc51a213d31ab035f28831fb0e4d9097727a80e32f2d477fcccb0525'

  url "https://get.filebot.net/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.xz"
  appcast 'https://app.filebot.net/update.xml'
  name 'FileBot'
  homepage 'https://www.filebot.net/'
  gpg "#{url}.asc", key_url: 'https://raw.githubusercontent.com/filebot/plugins/master/gpg/maintainer.pub'

  app 'FileBot.app'
  binary 'FileBot.app/Contents/MacOS/filebot.sh', target: 'filebot'

  zap trash: '~/Library/Preferences/net.filebot.ui.plist'

  caveats do
    depends_on_java '10+'
  end
end
