cask 'command-tab-plus' do
  version '1.119'
  sha256 '7d53fd5b73e4fb56fb6e478e270ede6a1124909dfdb99eed659f6a1a3c4da5d1'

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
