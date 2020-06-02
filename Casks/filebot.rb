cask 'filebot' do
  version '4.9.1'
  sha256 'd3a5ccfd562c1d49e5053c4538d0c82d46b47cc61fdd885a395d96eefbfc18fa'

  url "https://get.filebot.net/filebot/FileBot_#{version}/FileBot_#{version}.app.tar.xz"
  appcast 'https://app.filebot.net/update.xml'
  name 'FileBot'
  homepage 'https://www.filebot.net/'

  app 'FileBot.app'
  binary "#{appdir}/FileBot.app/Contents/MacOS/filebot.sh", target: 'filebot'
  binary "#{appdir}/FileBot.app/Contents/Resources/bash_completion.d/filebot_completion", target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/filebot"

  zap trash: '~/Library/Preferences/net.filebot.ui.plist'
end
