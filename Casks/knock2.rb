cask 'knock2' do
  version '2.0'
  sha256 '116ecc5ffd2238daa68409c3043e8d2ce5a4f3019f3af0742d7d4ef180f7e45c'

  url 'https://knock-updates.s3.amazonaws.com/Knock.zip'
  name 'Knock'
  homepage 'http://www.knocktounlock.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Knock.app'

  zap delete: [
                '/Applications/Knock.app',
                '~/Library/Preferences/com.knock.mac.plist',
                '~/Library/Logs/Knock',
                '~/Library/Caches/com.knock.mac',
                '~/Library/Caches/com.crashlytics.data/com.knock.mac',
              ],
      rmdir:  [
                '~/Library/Caches/com.crashlytics.data',
              ]
end
