cask 'falcon-sql-client' do
  version '3.0.1'
  sha256 '2123ba88e2b89d246f808bd65a2e21d1f250f27a60a05c0f04f1476938554a2b'

  # github.com/plotly/falcon-sql-client was verified as official when first introduced to the cask
  url "https://github.com/plotly/falcon-sql-client/releases/download/v#{version}/mac-falcon-v#{version}.zip"
  appcast 'https://github.com/plotly/falcon-sql-client/releases.atom'
  name 'Falcon SQL Client'
  homepage 'https://plot.ly/free-sql-client-download'

  app 'Falcon SQL Client.app'

  zap trash: [
               '~/.plotly',
               '~/Library/Preferences/com.electron.falcon-sql-client.helper.plist',
               '~/Library/Preferences/com.electron.falcon-sql-client.plist',
               '~/Library/Saved Application State/com.electron.falcon-sql-client.savedState',
             ]
end
