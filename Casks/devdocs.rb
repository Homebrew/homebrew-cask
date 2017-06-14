cask 'devdocs' do
  version '0.4.0'
  sha256 'ff8f0bdf1c6ad677139b1798717c0cfe58ab41fc2857b1155b196887e05d88ea'

  url "https://github.com/egoist/devdocs-app/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-app/releases.atom',
          checkpoint: '83ad81c3338a3ae9fc7ea32b3522d32a67f93f56d6bd7f1266e8340d13d59711'
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
