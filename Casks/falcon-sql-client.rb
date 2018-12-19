cask 'falcon-sql-client' do
  version '3.0.3'
  sha256 'f801257679523ee8ae7391423d053bf8f9d8decfb8b6bbd7fe703383447cf657'

  # github.com/plotly/falcon-sql-client was verified as official when first introduced to the cask
  url "https://github.com/plotly/falcon-sql-client/releases/download/v#{version}/mac-falcon-v#{version}.zip"
  appcast 'https://github.com/plotly/falcon-sql-client/releases.atom'
  name 'Falcon SQL Client'
  homepage 'https://plot.ly/free-sql-client-download/'

  app 'Falcon SQL Client.app'

  zap trash: [
               '~/.plotly',
               '~/Library/Preferences/com.electron.falcon-sql-client.helper.plist',
               '~/Library/Preferences/com.electron.falcon-sql-client.plist',
               '~/Library/Saved Application State/com.electron.falcon-sql-client.savedState',
             ]
end
