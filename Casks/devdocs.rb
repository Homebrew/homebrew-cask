cask 'devdocs' do
  version '0.6.0'
  sha256 'daea1cb863a38294b881fe68539cae8aa2e8f44ef660464626c1baf21d3b92eb'

  url "https://github.com/egoist/devdocs-app/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-app/releases.atom',
          checkpoint: '53cdfb1e0e99c951739deaf30a66dbb25de493340c9bb6a19ef3562c78e81c69'
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
