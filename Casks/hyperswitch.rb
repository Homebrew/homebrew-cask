cask 'hyperswitch' do
  version '0.2.572-dev'
  sha256 '50265443f61acff22040f17e6b00a7cdec2dc9be7bb151848461f9fd6552542d'

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  appcast 'https://bahoom.com/hyperswitch/appcast.xml',
          checkpoint: '74569bb37bae6d0a7ecfed2e63bc4acea2253e8611705ae8d24e1025b015cc16'
  name 'HyperSwitch'
  homepage 'https://bahoom.com/hyperswitch/'

  app 'HyperSwitch.app'
  
  zap delete: [
                '~/Library/Preferences/com.bahoom.HyperSwitch.plist',
                '~/Library/Caches/com.bahoom.HyperSwitch',
              ]
end
