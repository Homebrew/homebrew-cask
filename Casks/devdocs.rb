cask 'devdocs' do
  version '0.7.1'
  sha256 'cec5ab99d9d3cff879fedf5379904d0993b09a43cf3fb5838e02450e3798753a'

  url "https://github.com/egoist/devdocs-desktop/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-desktop/releases.atom'
  name 'DevDocs App'
  homepage 'https://github.com/egoist/devdocs-desktop'

  app 'DevDocs.app'

  zap trash: [
               '~/Library/Application Support/DevDocs',
               '~/Library/Preferences/com.egoistian.devdocs-app.helper.plist',
               '~/Library/Preferences/com.egoistian.devdocs-app.plist',
               '~/Library/Saved Application State/com.egoistian.devdocs-app.savedState',
             ]
end
