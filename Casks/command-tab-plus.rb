cask 'command-tab-plus' do
  version '1.110'
  sha256 'b95aac4557f4f31c808cfe8343239388ddd2c14935638c7f76e45d25414f683a'

  url 'https://noteifyapp.com/download/Command-Tab%20Plus.dmg'
  appcast 'https://macplus-software.com/downloads/Command-Tab.xml'
  name 'Command-Tab Plus'
  homepage 'https://noteifyapp.com/command-tab-plus/'

  app 'Command-Tab Plus.app'

  zap trash: [
               '/Users/Shared/Command-Tab Plus',
               '~/Library/Application Support/Command-Tab Plus',
               '~/Library/Caches/com.sergey-gerasimenko.Command-Tab',
             ]
end
