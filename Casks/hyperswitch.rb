cask 'hyperswitch' do
  version '0.2.577-dev'
  sha256 '76b55bc7e4a0a7fe4bcec2398280d8f87d709ffc156f9c483acd5a4c171e3745'

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  appcast 'https://bahoom.com/hyperswitch/appcast.xml',
          checkpoint: '821888e6a32eb2d62fe5f2f4eb07b14f7ecbd43744b63e31e0da1463c217fb3e'
  name 'HyperSwitch'
  homepage 'https://bahoom.com/hyperswitch/'

  app 'HyperSwitch.app'

  zap trash: [
               '~/Library/Preferences/com.bahoom.HyperSwitch.plist',
               '~/Library/Caches/com.bahoom.HyperSwitch',
             ]
end
