cask 'dropdmg' do
  version '3.4.6'
  sha256 '90d130084b39bd1b42f0cc140e8dbc972e0f6dc9583a42322b44631a2d6086fe'

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
