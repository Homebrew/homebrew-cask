cask 'dropdmg' do
  version '3.5.9'
  sha256 '3e84c0a84f9413ff3dc3a173e007bf7b736c1811a2ce799b0e1ad15903d60b3f'

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
