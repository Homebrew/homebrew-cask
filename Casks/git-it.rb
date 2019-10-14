cask 'git-it' do
  version '4.4.0'
  sha256 'b96c06bca744af94e2f035824fbd16f59673c4c454fd4bf96aa4bde965fe711d'

  url "https://github.com/jlord/git-it-electron/releases/download/#{version}/Git-it-Mac-x64.zip"
  appcast 'https://github.com/jlord/git-it-electron/releases.atom'
  name 'Git-it'
  homepage 'https://github.com/jlord/git-it-electron'

  app 'Git-it-Mac-x64/Git-it.app'

  zap trash: [
               '~/Library/Application Support/Git-it',
               '~/Library/Preferences/com.electron.git-it.helper.plist',
               '~/Library/Preferences/com.electron.git-it.plist',
             ]
end
