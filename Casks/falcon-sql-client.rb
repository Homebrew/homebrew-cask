cask 'falcon-sql-client' do
  version '2.6.0'
  sha256 '2762009f8920d4656fb8b9abe584b0e2d8d44cb0444381a2a6fdb34ed8018a04'

  # github.com/plotly/falcon-sql-client was verified as official when first introduced to the cask
  url "https://github.com/plotly/falcon-sql-client/releases/download/v#{version}/mac-falcon-v#{version}.zip"
  appcast 'https://github.com/plotly/falcon-sql-client/releases.atom',
          checkpoint: 'ff107055903411ae61d7448c078b8b9dc6f00a09be46d9dc3cf15e7ef83f731e'
  name 'Falcon SQL Client'
  homepage 'https://plot.ly/free-sql-client-download'

  container nested: "release/Falcon SQL Client-#{version}.dmg"

  app 'Falcon SQL Client.app'

  zap trash: [
               '~/.plotly',
               '~/Library/Preferences/com.electron.falcon-sql-client.helper.plist',
               '~/Library/Preferences/com.electron.falcon-sql-client.plist',
               '~/Library/Saved Application State/com.electron.falcon-sql-client.savedState',
             ]
end
