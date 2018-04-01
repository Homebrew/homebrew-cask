cask 'knock' do
  version '2.2.1'
  sha256 'c4eb533effd09dee4c1e89d9031afe4cb0260bc6088760bdaa6199511ffbad38'

  # knock-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://knock-updates.s3.amazonaws.com/Knock.zip'
  appcast 'https://knock-updates.s3.amazonaws.com/Knock.xml',
          checkpoint: 'ca44d5a1fdc3bc619f61202a52c92118da0dc37fb474beaab9d5c93b79431b9b'
  name 'Knock'
  homepage 'http://www.knocktounlock.com/'

  app 'Knock.app'

  zap trash: [
               '~/Library/Preferences/com.knock.mac.plist',
               '~/Library/Logs/Knock',
               '~/Library/Caches/com.knock.mac',
               '~/Library/Caches/com.crashlytics.data/com.knock.mac',
             ],
      rmdir: [
               '~/Library/Caches/com.crashlytics.data',
             ]
end
