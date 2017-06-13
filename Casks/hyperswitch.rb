cask 'hyperswitch' do
  version '0.2.575-dev'
  sha256 '775449f5d416da651cb78b88d83657ae723ea35edd22a7f4f281e4504ae8dab2'

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  appcast 'https://bahoom.com/hyperswitch/appcast.xml',
          checkpoint: 'f66e69660743337d404cca0c2e30d590f52ad94b4b6e251ae93cb8d1ab150ab4'
  name 'HyperSwitch'
  homepage 'https://bahoom.com/hyperswitch/'

  app 'HyperSwitch.app'

  zap delete: [
                '~/Library/Preferences/com.bahoom.HyperSwitch.plist',
                '~/Library/Caches/com.bahoom.HyperSwitch',
              ]
end
