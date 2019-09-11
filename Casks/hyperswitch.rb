cask 'hyperswitch' do
  version '0.2.589-dev'
  sha256 '785375312d164988d0956f72c9343f821f451a5ad232c7f937dcf10352a7dbf7'

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
