cask 'devdocs' do
  version '0.6.9'
  sha256 'fb983d3f17fd987afbe624e4949c79dd8f19b11072430da4e81e02ad4bb761f1'

  url "https://github.com/egoist/devdocs-desktop/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-desktop/releases.atom',
          checkpoint: '47235b85c30708048979135f1f5237ad16d9432628ed664e9420f034e9d51e48'
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
