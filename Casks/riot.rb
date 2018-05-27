cask 'riot' do
  version '0.15.4'
  sha256 '0d47cc76e2bbf8e45ced3e2138ca791ae1ae16cfc69df358b71efe1b65290059'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '0e261ddce20b5f07ee9bf355d61493cb245c30fac2e5cdcdfcfed00a43f39e74'
  name 'Riot'
  homepage 'https://about.riot.im/'

  app 'Riot.app'

  zap trash: [
               '~/Library/Application Support/Riot',
               '~/Library/Preferences/im.riot.app.helper.plist',
               '~/Library/Preferences/im.riot.app.plist',
               '~/Library/Saved Application State/im.riot.app.savedState',
             ]
end
