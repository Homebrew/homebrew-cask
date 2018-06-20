cask 'hyperswitch' do
  version '0.2.585-dev'
  sha256 'ce29bfb40cc8fc3ebbe97c097a5dd04ee5f8d5c8194e11563d2e7b444574eba3'

  url "https://bahoom.com/hyperswitch/#{version}/HyperSwitch.zip"
  appcast 'https://bahoom.com/hyperswitch/appcast.xml'
  name 'HyperSwitch'
  homepage 'https://bahoom.com/hyperswitch/'

  app 'HyperSwitch.app'

  zap trash: [
               '~/Library/Preferences/com.bahoom.HyperSwitch.plist',
               '~/Library/Caches/com.bahoom.HyperSwitch',
             ]
end
