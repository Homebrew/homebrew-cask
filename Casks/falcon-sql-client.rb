cask 'falcon-sql-client' do
  version '3.0.2'
  sha256 'f3155c4615fa6b3bf90abd274353fa74b7cdf992a9e769e659a047f691cd8c20'

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
