cask 'knock' do
  version '2.1.7'
  sha256 '116ecc5ffd2238daa68409c3043e8d2ce5a4f3019f3af0742d7d4ef180f7e45c'

  # knock-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://knock-updates.s3.amazonaws.com/Knock.zip'
  appcast 'https://knock-updates.s3.amazonaws.com/Knock.xml',
          checkpoint: '6b099be08fd57bd8223621e4b10ce690954ae2871a015ffc156d920899efca9d'
  name 'Knock'
  homepage 'http://knocktounlock.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Knock.app'

  zap delete: [
                '~/Library/Preferences/com.knock.mac.plist',
                '~/Library/Logs/Knock',
                '~/Library/Caches/com.knock.mac',
                '~/Library/Caches/com.crashlytics.data/com.knock.mac',
              ],
      rmdir:  [
                '~/Library/Caches/com.crashlytics.data',
              ]
end
