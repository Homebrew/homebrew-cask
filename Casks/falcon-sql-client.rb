cask 'falcon-sql-client' do
  version '2.4.0'
  sha256 'b1a4aca3015b482a2687103e02a48e444abb5536b0b5bd0ca3bcfc0c788c1c86'

  # github.com/plotly/falcon-sql-client was verified as official when first introduced to the cask
  url "https://github.com/plotly/falcon-sql-client/releases/download/v#{version}/mac-falcon-v#{version}.zip"
  appcast 'https://github.com/plotly/falcon-sql-client/releases.atom',
          checkpoint: '50cab7fd7217005da62161e9b7339a5b7710cc0396db7d44d2d99d43b5f986d9'
  name 'Falcon SQL Client'
  homepage 'https://plot.ly/free-sql-client-download'

  app 'release/Mac-64bit/Falcon SQL Client-darwin-x64/Falcon SQL Client.app'

  zap trash: [
               '~/.plotly',
               '~/Library/Preferences/com.electron.falcon-sql-client.helper.plist',
               '~/Library/Preferences/com.electron.falcon-sql-client.plist',
               '~/Library/Saved Application State/com.electron.falcon-sql-client.savedState',
             ]
end
