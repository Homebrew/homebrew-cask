cask 'knock' do
  version '2.1.8'
  sha256 '95dc636b7544861509cdd73ccd0356a762ab936024b20c983a7c02cb8d0508df'

  # knock-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://knock-updates.s3.amazonaws.com/Knock.zip'
  appcast 'https://knock-updates.s3.amazonaws.com/Knock.xml',
          checkpoint: 'de71f1603b967c2156132dd1ae06c6628a202be2c5990327b107d5f2e8575b69'
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
