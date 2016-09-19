cask 'knock' do
  version '2.2'
  sha256 'd20553e486ceebda7c064aea70ee3c1cb322f9e12be13cdd29ca03116c171d60'

  # knock-updates.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://knock-updates.s3.amazonaws.com/Knock.zip'
  appcast 'https://knock-updates.s3.amazonaws.com/Knock.xml',
          checkpoint: '816c6845cf146c26c87b6724c7b1e3c2ac3922fe2224a9880d5e52b4055aa2d3'
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
