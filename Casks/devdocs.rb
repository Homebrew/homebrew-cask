cask 'devdocs' do
  version '0.7.1'
  sha256 'cec5ab99d9d3cff879fedf5379904d0993b09a43cf3fb5838e02450e3798753a'

  # github.com/egoist/devdocs-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/egoist/devdocs-desktop/releases/download/v#{version}/DevDocs-#{version}.dmg"
  appcast 'https://github.com/egoist/devdocs-desktop/releases.atom'
  name 'DevDocs App'
  homepage 'https://devdocs.egoist.sh/'

  app 'DevDocs.app'

  zap trash: [
               '~/.devdocs',
               '~/Library/Application Support/DevDocs',
               '~/Library/Logs/DevDocs',
               '~/Library/Preferences/sh.egoist.devdocs.plist',
               '~/Library/Saved Application State/sh.egoist.devdocs.savedState',
             ]
end
