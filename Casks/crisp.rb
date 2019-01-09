cask 'crisp' do
  version :latest
  sha256 :no_check

  url 'https://storage.crisp.chat/apps/mac/Crisp.dmg'
  name 'Crisp'
  homepage 'https://crisp.chat/'

  app 'Crisp.app'

  uninstall signal: [
                      ['TERM', 'Crisp'],
                      ['TERM', 'Crisp.helper'],
                    ]

  zap trash: [
               '~/Library/Application Support/Crisp',
               '~/Library/Caches/Crisp',
               '~/Library/Caches/Crisp.ShipIt',
               '~/Library/Cookies/Crisp.binarycookies',
               '~/Library/Preferences/Crisp.helper.plist',
               '~/Library/Preferences/Crisp.plist',
               '~/Library/Saved Application State/Crisp.savedState',
             ]
end
