cask 'git-it' do
  version '4.2.2'
  sha256 '636efb126d3c55b1baf7ac15766019a12a4cb78416814205559e29ea1bdfaf94'

  url "https://github.com/jlord/git-it-electron/releases/download/#{version}/Git-it-Mac-x64.zip"
  appcast 'https://github.com/jlord/git-it-electron/releases.atom',
          checkpoint: '6fafdd46968a5d2b551a83b17508a31f18b4a099f262874a61dca3f96c86b9b2'
  name 'Git-it'
  homepage 'https://github.com/jlord/git-it-electron'

  app 'Git-it-Mac-x64/Git-it.app'

  zap delete: [
                '~/Library/Application Support/Git-it',
              ]
end
