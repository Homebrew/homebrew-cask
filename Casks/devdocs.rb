cask 'devdocs' do
  version '0.6.5'
  sha256 '9fefb1192a919d49b86bfc7d4c985167f1da935045cdb6f6515116e6cf487677'

  url "https://github.com/egoist/devdocs-desktop/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-desktop/releases.atom',
          checkpoint: '09e231f559e035bcd9061cf131517ed86705b050395d15b75e92478fba39f385'
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
