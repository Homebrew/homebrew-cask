cask 'devdocs' do
  version '0.5.0'
  sha256 '67e64ad1b521caa37246c8273cc5f3a01b30a1403da575a2e32692f6d5d12ffd'

  url "https://github.com/egoist/devdocs-app/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-app/releases.atom',
          checkpoint: 'ed2b374a4b3cbc3b3fb81eaf946be6d650d5f43c5d2f08043a1781a1c1863813'
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
