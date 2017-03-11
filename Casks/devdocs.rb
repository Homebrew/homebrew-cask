cask 'devdocs' do
  version '0.2.2'
  sha256 '53a6464a30526638dcae63dd621964dd54cda5310f01a258e4ccc377d45b1688'

  url "https://github.com/egoist/devdocs-app/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-app/releases.atom',
          checkpoint: 'b5e3beae81e20809834d230009570702bfe658f7adcc70916f5206665c7411a8'
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
