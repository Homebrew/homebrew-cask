cask 'command-tab-plus' do
  version '1.119'
  sha256 '421086f5f7b2c51edbdf4f1dd01c5418e1f0f5f366d448ee0f0acccf4f3f100b'

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
