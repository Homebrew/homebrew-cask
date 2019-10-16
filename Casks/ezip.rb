cask 'ezip' do
  version '1.7.6'
  sha256 '04e341600948e6cb06356fa948432090f2aaee263d6b94825d8a9892f29a9c50'

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
