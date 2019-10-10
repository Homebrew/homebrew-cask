cask 'dropdmg' do
  version '3.5.8'
  sha256 '1b137bca48a0af0cc6a58e0ad0e33e84c54afd756c3eab39843cb3f50004bf96'

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
