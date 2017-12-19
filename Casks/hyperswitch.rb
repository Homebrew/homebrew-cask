cask 'hyperswitch' do
  version '0.2.584-dev'
  sha256 '83cdc770eaf8372e76d2c0a82b2802095b5ecb5e42e2e246cd09dbc2c16a9662'

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  appcast 'https://bahoom.com/hyperswitch/appcast.xml',
          checkpoint: '66da4ec9fce83b5386581571b6ed200d112ae094c680f8d5a7cec264f00d03e2'
  name 'HyperSwitch'
  homepage 'https://bahoom.com/hyperswitch/'

  app 'HyperSwitch.app'

  zap trash: [
               '~/Library/Preferences/com.bahoom.HyperSwitch.plist',
               '~/Library/Caches/com.bahoom.HyperSwitch',
             ]
end
