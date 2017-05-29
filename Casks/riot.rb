cask 'riot' do
  version '0.9.10'
  sha256 'df2c98eb1bee825d50852f19ccd40f7b20a7915063a3b92917c96d0590cd103b'

  url "https://riot.im/download/desktop/install/macos/Riot-#{version}.dmg"
  appcast 'https://github.com/vector-im/riot-web/releases.atom',
          checkpoint: '6df1df606f3e59e19058e4d3050b97619a87b321577cb1bc690f9f4d5bfc7b76'
  name 'Riot'
  homepage 'https://about.riot.im/'

  app 'Riot.app'

  zap delete: [
                '~/Library/Application Support/Riot',
                '~/Library/Preferences/im.riot.app.helper.plist',
                '~/Library/Preferences/im.riot.app.plist',
                '~/Library/Saved Application State/im.riot.app.savedState',
              ]
end
