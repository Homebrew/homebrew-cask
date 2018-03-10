cask 'riot' do
  version '0.13.5'
  sha256 '4f80eb280369fcddafd66c66ce080269ca21e8f7d8e3edd10c9d8bcb8a9e1ffd'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '8846ab580c7a9d6fbd7009b94b36294992c46959b63b5ef7eba9ef9b8b0796de'
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
