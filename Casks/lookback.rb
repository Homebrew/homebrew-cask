cask 'lookback' do
  version '1.90.1.gf0d1248'
  sha256 '774a8632c7402e89cf586ef8989e7c44288e3a728d562cedbb4b604bc5853a33'

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
