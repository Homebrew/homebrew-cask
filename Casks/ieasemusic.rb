cask 'ieasemusic' do
  version '1.0.1'
  sha256 '1c5f142656fd5c70717812025ed097dfa78b8c9aa47e06e662fd1bae92d5ccc0'

  url "https://github.com/trazyn/ieaseMusic/releases/download/v#{version}/ieaseMusic-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/ieaseMusic/releases.atom',
          checkpoint: '013ba308fe925775cac061e34e7389e6ab0f491cb715b218dcb842d0f4bbcdc4'
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
