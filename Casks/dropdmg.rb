cask 'dropdmg' do
  version '3.5.6'
  sha256 '39df68635fa9f42b7254c3ab198195f661efe0ae9542d7dc12b43629b7580177'

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
