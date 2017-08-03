cask 'devdocs' do
  version '0.6.4'
  sha256 '01583744b531848f0af0dd708b64537c657e7261f61a3fccfdc1de7adff5d6b8'

  url "https://github.com/egoist/devdocs-desktop/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-desktop/releases.atom',
          checkpoint: '6d224b56ffab0d6ab371d0d3fababbdb042e56c009e60d2d6bfb83dff3aee226'
  name 'DevDocs App'
  homepage 'https://github.com/egoist/devdocs-desktop'

  app 'DevDocs.app'

  zap delete: [
                '~/Library/Application Support/DevDocs',
                '~/Library/Preferences/com.egoistian.devdocs-app.helper.plist',
                '~/Library/Preferences/com.egoistian.devdocs-app.plist',
                '~/Library/Saved Application State/com.egoistian.devdocs-app.savedState',
              ]
end
