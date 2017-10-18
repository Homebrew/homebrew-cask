<<<<<<< HEAD:Casks/iease-music.rb
cask 'iease-music' do
  version '1.0.1'
  sha256 '1c5f142656fd5c70717812025ed097dfa78b8c9aa47e06e662fd1bae92d5ccc0'
=======
cask 'ieasemusic' do
  version '1.0.0'
  sha256 '1f9aba95c46499568e967d1975f974f66bfb46789cf4a4d88a11f5218e5c4662'
>>>>>>> 0322525ebc629bbfc1b303b02f1379fa4bd146c8:Casks/ieasemusic.rb

  url "https://github.com/trazyn/ieaseMusic/releases/download/v#{version}/ieaseMusic-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/ieaseMusic/releases.atom',
          checkpoint: 'a2bce12704796cc87a98a58271c271b942b40af2fc86bbbc89b352d0eb6d7d82'
  name 'ieaseMusic'
  homepage 'https://github.com/trazyn/ieaseMusic'

  app 'ieaseMusic.app'

  zap delete: '~/Library/Saved Application State/gh.trazyn.ieasemusic.savedState',
      trash:  [
                '~/Library/Application Support/ieasemusic',
                '~/Library/Preferences/gh.trazyn.ieasemusic.helper.plist',
                '~/Library/Preferences/gh.trazyn.ieasemusic.plist',
              ]
end
