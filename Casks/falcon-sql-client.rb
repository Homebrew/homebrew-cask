cask 'falcon-sql-client' do
  version '2.3.2'
  sha256 'e1f1d9fd7640e2441fbdb567e761854d82b08d6f03be38ddcfe1a18e412af1d2'

  # github.com/plotly/falcon-sql-client was verified as official when first introduced to the cask
  url "https://github.com/plotly/falcon-sql-client/releases/download/v#{version}/mac-falcon-sql-client.zip"
  appcast 'https://github.com/plotly/falcon-sql-client/releases.atom',
          checkpoint: '133de7d6300561f52d3bb599fd33b3bf0a6bf1988e462eafbdb188899a696945'
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
