cask 'git-it' do
  version '4.2.3'
  sha256 '81ea8d0a675286f6d6ed958c68456f13c9315704191e747b4227dec4f0ef54ad'

  url "https://github.com/jlord/git-it-electron/releases/download/#{version}/Git-it-Mac-x64.zip"
  appcast 'https://github.com/jlord/git-it-electron/releases.atom',
          checkpoint: '2ec735bc7d4f679ba67ccfbdfd1af29943e9f5c67bd56c46706b644bb8782283'
  name 'Git-it'
  homepage 'https://github.com/jlord/git-it-electron'

  app 'Git-it-darwin-x64/Git-it.app'

  zap delete: '~/Library/Application Support/Git-it'
end
