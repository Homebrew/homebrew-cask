cask 'falcon-sql-client' do
  version '2.5.0'
  sha256 '3b8238a2dbfabfc87e63039b027421d17b71df9ce014d27d4d42b161589f0242'

  # github.com/plotly/falcon-sql-client was verified as official when first introduced to the cask
  url "https://github.com/plotly/falcon-sql-client/releases/download/v#{version}/mac-falcon-v#{version}.zip"
  appcast 'https://github.com/plotly/falcon-sql-client/releases.atom',
          checkpoint: 'd8a98a13f3695c205b3ac9cb383120921c2c7808d301fbaa24a802e4724603dd'
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
