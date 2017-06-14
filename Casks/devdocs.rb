cask 'devdocs' do
  version '0.5.1'
  sha256 '328b5e53819f484033e82d7d056bb290cb78193625193ad53f00496884dd82e5'

  url "https://github.com/egoist/devdocs-app/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-app/releases.atom',
          checkpoint: '69513ab9f9ef22d4a392b08e99a29a97ca7ba24d37d3af5fcbc5a0c5159c143b'
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
