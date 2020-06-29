cask 'ezip' do
  version '1.9'
  sha256 '2b98b532317426554c958eb5d3222c6654f51e1bc3cfcccf0e6041d1f34f44b2'

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
