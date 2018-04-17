cask 'git-it' do
  version '4.3.3'
  sha256 '466c3c9a2c60a96c1f662bb2f4c4d264f65f5aa29303c808bfbf0ab5c6644827'

  url "https://github.com/jlord/git-it-electron/releases/download/#{version}/Git-it-Mac-x64.zip"
  appcast 'https://github.com/jlord/git-it-electron/releases.atom',
          checkpoint: '9ae33c41691c1724b7008608177d920618c1a982ed7674d20c26b0db3b583807'
  name 'Git-it'
  homepage 'https://github.com/jlord/git-it-electron'

  app 'Git-it-Mac-x64/Git-it.app'

  zap trash: [
               '~/Library/Application Support/Git-it',
               '~/Library/Preferences/com.electron.git-it.helper.plist',
               '~/Library/Preferences/com.electron.git-it.plist',
             ]
end
