cask 'falcon-sql-client' do
  version '2.8.0'
  sha256 'e17dd62f73417c8134cc0cef6ebacdcd01846ffcd8f85068aec8204619251926'

  # github.com/plotly/falcon-sql-client was verified as official when first introduced to the cask
  url "https://github.com/plotly/falcon-sql-client/releases/download/v#{version}/mac-falcon-v#{version}.zip"
  appcast 'https://github.com/plotly/falcon-sql-client/releases.atom'
  name 'Falcon SQL Client'
  homepage 'https://plot.ly/free-sql-client-download'

  container nested: "release/mac-falcon-v#{version}.dmg"

  app 'Falcon SQL Client.app'

  zap trash: [
               '~/.plotly',
               '~/Library/Preferences/com.electron.falcon-sql-client.helper.plist',
               '~/Library/Preferences/com.electron.falcon-sql-client.plist',
               '~/Library/Saved Application State/com.electron.falcon-sql-client.savedState',
             ]
end
