cask 'devdocs' do
  version '0.6.8'
  sha256 '3f11e30494c2afa2f3707422ac04f85a6e13f9cb0c63468af0723f0904f46aa1'

  url "https://github.com/egoist/devdocs-desktop/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-desktop/releases.atom',
          checkpoint: 'f20cbce39bf852305da20df431c1385666635de40631d45c9c8ae14c361fa2d8'
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
