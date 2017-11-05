cask 'dropdmg' do
  version '3.5.1'
  sha256 '125dac913b69edba6fc8e4e7d78f3be94af7d0578e119e5a19801f19e14ef5d6'

  url "https://c-command.com/downloads/DropDMG-#{version}.dmg"
  name 'DropDMG'
  homepage 'https://c-command.com/dropdmg/'

  app 'DropDMG.app'

  zap delete: [
                '~/Library/Application Support/DropDMG',
                '~/Library/Automator/DropDMG.action',
                '~/Library/Automator/Expand Disk Image.action',
                '~/Library/Caches/com.c-command.DropDMG',
                '~/Library/Preferences/com.c-command.DropDMG.plist',
              ]
end
