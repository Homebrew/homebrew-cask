cask 'riot' do
  version '0.16.4'
  sha256 'a1ea8f91b93c28b8493844b6226bbfda2c289e996183cd5652368d99ca3d3ef8'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom'
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
