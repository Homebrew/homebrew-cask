cask 'insomnia' do
  version '5.16.4'
  sha256 '0ce23b18e52050451feca657f97d8449ad8fdda0d45bf7f80c8329cba8f46137'

  # github.com/getinsomnia/insomnia was verified as official when first introduced to the cask
  url "https://github.com/getinsomnia/insomnia/releases/download/v#{version}/Insomnia-#{version}.dmg"
  appcast 'https://insomnia.rest/changelog/index.xml',
          checkpoint: 'e9c7c5e0755d09c0b774726b08e5a06719dfbdd44d9113c92060bdf3f24b21fc'
  name 'Insomnia'
  homepage 'https://insomnia.rest/'

  auto_updates true

  app 'Insomnia.app'

  zap trash: [
               '~/Library/Application Support/Insomnia',
               '~/Library/Caches/com.insomnia.app',
               '~/Library/Caches/com.insomnia.app.ShipIt',
               '~/Library/Cookies/com.insomnia.app.binarycookies',
               '~/Library/Preferences/com.insomnia.app.helper.plist',
               '~/Library/Preferences/com.insomnia.app.plist',
               '~/Library/Saved Application State/com.insomnia.app.savedState',
             ]
end
