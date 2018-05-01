cask 'riot' do
  version '0.14.2'
  sha256 'f9eb147ad677f20538535594194ee6a954e4e6ac82509aacc703890879f71568'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '5ae6a625e6ec0f42a083a0ae84ec7ca4aae779eb22ec4f286e01df6b583f6147'
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
