cask 'git-it' do
  version '4.2.1'
  sha256 'b54945eff4fa95b21586b97c829957729f8502b63187f0521391c6316d8bd29b'

  url "https://github.com/jlord/git-it-electron/releases/download/#{version}/Git-it-Mac-x64.zip"
  appcast 'https://github.com/jlord/git-it-electron/releases.atom',
          checkpoint: '0c373b2f4391f9cf2acf0f573f5e35fb60e5e8ab8333e6483ffe6e8e0a49dac5'
  name 'Git-it'
  homepage 'https://github.com/jlord/git-it-electron'

  app 'Git-it-Mac-x64/Git-it.app'

  zap delete: [
                '~/Library/Application Support/Git-it',
              ]
end
