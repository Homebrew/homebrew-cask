cask 'razorsql' do
  version '7.4.0'
  sha256 '618b14f3c89eaa954563f317140032aa18358f3c9e601dbe16c0643bc3ec7486'

  url "http://downloads.razorsql.com/downloads/#{version.dots_to_underscores}/razorsql#{version.dots_to_underscores}_x64.dmg"
  appcast 'https://razorsql.com/updates.html',
          checkpoint: 'f72e6bc77996ad17c33999d2682b7c71c4a108aeba460502ab26de15bf84cc50'
  name 'RazorSQL'
  homepage 'https://razorsql.com/download_mac.html'

  app 'RazorSQL.app'

  zap trash: '~/.razorsql'
end
