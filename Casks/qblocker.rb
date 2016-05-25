cask 'qblocker' do
  version '17,1462960827'
  sha256 '70a23a8609eaeaa92f58f341a17052f7031b19fbc352243bef951405a97e090f'

  # devmate.com/uk.co.wearecocoon.QBlocker was verified as official when first introduced to the cask
  url "https://dl.devmate.com/uk.co.wearecocoon.QBlocker/#{version.before_comma}/#{version.after_comma}/QBlocker-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/uk.co.wearecocoon.QBlocker.xml',
          checkpoint: '0a5f77b06b549d6bf58541780e5b5943c8a9c4673a11928b0112e21b97adfb7d'
  name 'QBlocker'
  homepage 'http://qblocker.com/'
  license :oss

  accessibility_access true

  app 'QBlocker.app'

  zap delete: [
                '~/Library/Application Support/uk.co.wearecocoon.QBlocker',
                '~/Library/Caches/uk.co.wearecocoon.QBlocker',
                '~/Library/Logs/uk.co.wearecocoon.QBlocker',
                '~/Library/Preferences/uk.co.wearecocoon.QBlocker.plist',
              ]
end
