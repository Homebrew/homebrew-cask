cask 'lookback' do
  version '1.90.6.g6e2b8a9'
  sha256 '93e9704158e28fcdf8d43e1ccfa6dac9857b90693c492c6832c046e1a5ea580b'

  # deungs2vexe3s.cloudfront.net/apps/mac was verified as official when first introduced to the cask
  url "https://deungs2vexe3s.cloudfront.net/apps/mac/Lookback-#{version}.app.zip"
  name 'Lookback'
  homepage 'https://lookback.io/'

  app 'Lookback.app'

  zap trash: [
               '~/Library/Application Support/io.lookback.browser',
               '~/Library/Application Support/io.lookback.Lookback',
               '~/Library/Application Support/Lookback',
               '~/Library/Caches/com.crashlytics.data/io.lookback.Lookback',
               '~/Library/Caches/io.fabric.sdk.mac.data/io.lookback.Lookback',
               '~/Library/Caches/io.lookback.Lookback',
               '~/Library/Caches/Lookback',
               '~/Library/Preferences/io.lookback.Lookback.plist',
             ]
end
