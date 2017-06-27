cask 'devdocs' do
  version '0.6.4'
  sha256 '01583744b531848f0af0dd708b64537c657e7261f61a3fccfdc1de7adff5d6b8'

  url "https://github.com/egoist/devdocs-desktop/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-desktop/releases.atom',
          checkpoint: '9fe2ed48e3dd44dfe955e18b49bcb4071295a3e04cea5d90bf70e402397ae892'
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
