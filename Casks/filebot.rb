cask 'filebot' do
  version '4.9.0'
  sha256 'd8bc65a9eb2a1cdc97fd6125f3eadb978f2e178c2b0c65b354b20880af6d49a1'

  url "https://get.filebot.net/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.xz"
  appcast 'https://app.filebot.net/update.xml'
  name 'FileBot'
  homepage 'https://www.filebot.net/'

  app 'FileBot.app'
  binary "#{appdir}/FileBot.app/Contents/MacOS/filebot.sh", target: 'filebot'

  zap trash: '~/Library/Preferences/net.filebot.ui.plist'
end
