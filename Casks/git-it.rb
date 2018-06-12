cask 'git-it' do
  version '4.3.0'
  sha256 '95b45c3671a439823084ffd67af28032f9769e8e0fbb154a30764c6ae2b75f87'

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
