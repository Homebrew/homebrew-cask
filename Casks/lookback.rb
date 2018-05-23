cask 'lookback' do
  version '1.88.0.31.g5e60c5a'
  sha256 'aa2f5a956fd1a4f3636ea7e580c58e33ee192d7cf3edc14af507205a0e005d65'

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
