cask 'hyperswitch' do
  version '0.2.588-dev'
  sha256 '0c07f4813f75bd73d1e4718fd53f30f46fb3179583f8ec81163146008695377a'

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
