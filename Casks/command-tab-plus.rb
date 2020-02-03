cask 'command-tab-plus' do
  version '1.109'
  sha256 'c133c07450b65bd8bd48b188eb99606027b3c0186aca5c4806cbb1dbeb9dfc1c'

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
