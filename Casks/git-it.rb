cask 'git-it' do
  version '4.2.1'
  sha256 'b54945eff4fa95b21586b97c829957729f8502b63187f0521391c6316d8bd29b'

  url "https://github.com/jlord/git-it-electron/releases/download/#{version}/Git-it-Mac-x64.zip"
  appcast 'https://github.com/jlord/git-it-electron/releases.atom',
          checkpoint: '1547abc72f5827b0ecb17a420b2213354b7a2a8f89d688d7a0697cd815cc4686'
  name 'Git-it'
  homepage 'https://github.com/jlord/git-it-electron'
  license :oss

  app 'Git-it-Mac-x64/Git-it.app'

  zap delete: [
                '~/Library/Application Support/Git-it',
              ]
end
