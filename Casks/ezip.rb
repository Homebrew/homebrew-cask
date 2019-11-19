cask 'ezip' do
  version '1.7.7'
  sha256 '285992bc21355820bb409f50462aea61750e856135bcddc38d7cd9c0eeab4b2b'

  url "https://cdn.awehunt.com/ezip/release/eZip_V#{version}.dmg"
  appcast 'https://ezip.awehunt.com/'
  name 'ezip'
  homepage 'https://ezip.awehunt.com/'

  app 'eZip.app'

  zap trash: [
               '~/Library/Application Scripts/com.jinghaoshe.ezip',
               '~/Library/Containers/com.jinghaoshe.ezip',
               '~/Library/Preferences/com.jinghaoshe.eZipAssistant.plist', # eZip Assistant
               '~/Library/WebKit/com.jinghaoshe.ezip',
             ]
end
