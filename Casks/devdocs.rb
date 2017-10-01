cask 'devdocs' do
  version '0.6.6'
  sha256 '6572a6ce320b3165e128683dd4ca3525cf2588974b5c2aa1e67dca972e5d3c3a'

  url "https://github.com/egoist/devdocs-desktop/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-desktop/releases.atom',
          checkpoint: '4617cf9cf7a813edb8dbe0dd822adaeb611f6d92e830fdd941757e63fd4d0333'
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
