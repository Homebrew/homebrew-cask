cask 'filebot' do
  version '4.8.5'
  sha256 '8e9c409ce8d9bc8b87702249897c81a32b7485a78bb15b073477413d34f94f82'

  url "https://get.filebot.net/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.xz"
  appcast 'https://app.filebot.net/update.xml'
  name 'FileBot'
  homepage 'https://www.filebot.net/'

  app 'FileBot.app'
  binary "#{appdir}/FileBot.app/Contents/MacOS/filebot.sh", target: 'filebot'

  zap trash: '~/Library/Preferences/net.filebot.ui.plist'
end
