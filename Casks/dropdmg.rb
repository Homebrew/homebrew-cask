cask 'dropdmg' do
  version '3.5.10'
  sha256 'fe35111088fc5e77c3f87087c1404f513483ef5590aca0880bbbb78fcd4e3de1'

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
