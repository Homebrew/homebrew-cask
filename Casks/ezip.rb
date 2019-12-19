cask 'ezip' do
  version '1.8.1'
  sha256 '08b4dd19663fb24d0174f82df686b61839cd8ae2199d5041cb4995151042052c'

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
