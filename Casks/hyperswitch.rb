cask 'hyperswitch' do
  version '0.2.590-dev'
  sha256 '012f43ed508e6361c33dee09e611dc524c412ff2cc8990ad8733c2f7830afa47'

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  appcast 'https://bahoom.com/hyperswitch/appcast.xml'
  name 'HyperSwitch'
  homepage 'https://bahoom.com/hyperswitch/'

  auto_updates true

  app 'HyperSwitch.app'

  zap trash: [
               '~/Library/Preferences/com.bahoom.HyperSwitch.plist',
               '~/Library/Caches/com.bahoom.HyperSwitch',
             ]
end
