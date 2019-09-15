cask 'dropdmg' do
  version '3.5.7'
  sha256 '674b7cb8f6a01e10a952a6075006789e5e70cad1cbd066dd241ea0ba0a3a773b'

  url "https://c-command.com/downloads/DropDMG-#{version}.dmg"
  appcast 'https://c-command.com/dropdmg/'
  name 'DropDMG'
  homepage 'https://c-command.com/dropdmg/'

  app 'DropDMG.app'

  zap trash: [
               '~/Library/Application Support/DropDMG',
               '~/Library/Automator/DropDMG.action',
               '~/Library/Automator/Expand Disk Image.action',
               '~/Library/Caches/com.c-command.DropDMG',
               '~/Library/Preferences/com.c-command.DropDMG.plist',
             ]
end
