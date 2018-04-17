cask 'qblocker' do
  version '20,1464612307'
  sha256 'fb0202894271c3b63a6cffb6fa72d5d27065a0698a3b8a8038e18b7c43872385'

  # devmate.com/uk.co.wearecocoon.QBlocker was verified as official when first introduced to the cask
  url "https://dl.devmate.com/uk.co.wearecocoon.QBlocker/#{version.before_comma}/#{version.after_comma}/QBlocker-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/uk.co.wearecocoon.QBlocker.xml',
          checkpoint: '9e2b0dd2a34cf6bb9349ed7671a9fd1926f574e38aebbf95266663866f6708bf'
  name 'QBlocker'
  homepage 'https://qblocker.com/'

  accessibility_access true

  app 'QBlocker.app'

  zap trash: [
               '~/Library/Application Support/uk.co.wearecocoon.QBlocker',
               '~/Library/Caches/uk.co.wearecocoon.QBlocker',
               '~/Library/Logs/uk.co.wearecocoon.QBlocker',
               '~/Library/Preferences/uk.co.wearecocoon.QBlocker.plist',
             ]
end
