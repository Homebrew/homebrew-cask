cask 'ieasemusic' do
  version '1.0.0'
  sha256 '1f9aba95c46499568e967d1975f974f66bfb46789cf4a4d88a11f5218e5c4662'

  url "https://github.com/trazyn/ieaseMusic/releases/download/v#{version}/ieaseMusic-#{version}-mac.dmg"
  appcast 'https://github.com/trazyn/ieaseMusic/releases.atom',
          checkpoint: 'e1be2516c8dff91aec6e1e755193cf966a138a567b08a65084e73fb85c59c5d0'
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
