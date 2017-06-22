cask 'devdocs' do
  version '0.6.3'
  sha256 'f6163fdf75d3060b1efadc50b5419c31ac6ea46fb0eca1f0ded7ff4ab1fefba5'

  url "https://github.com/egoist/devdocs-app/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-app/releases.atom',
          checkpoint: '56c49160273da7e5cacc337589e203e9fb272c6c36a09a026da5fb8fa7c7bf97'
  name 'DevDocs App'
  homepage 'https://github.com/egoist/devdocs-app'

  app 'DevDocs.app'

  zap delete: [
                '~/Library/Application Support/DevDocs',
                '~/Library/Preferences/com.egoistian.devdocs-app.helper.plist',
                '~/Library/Preferences/com.egoistian.devdocs-app.plist',
                '~/Library/Saved Application State/com.egoistian.devdocs-app.savedState',
              ]
end
