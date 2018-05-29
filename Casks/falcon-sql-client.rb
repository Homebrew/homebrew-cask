cask 'falcon-sql-client' do
  version '2.7.0'
  sha256 'bb27deb67b94934d8cba4de49dd5d03874bc61ae804ebf68b5ef78d0b174fe6b'

  # github.com/plotly/falcon-sql-client was verified as official when first introduced to the cask
  url "https://github.com/plotly/falcon-sql-client/releases/download/v#{version}/mac-falcon-v#{version}.zip"
  appcast 'https://github.com/plotly/falcon-sql-client/releases.atom',
          checkpoint: '56bec73f750d39b1010f1dab1ca50468b699946d79cbf00ff7f41beb18dd3a38'
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
