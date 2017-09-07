cask 'dropdmg' do
  version '3.5'
  sha256 '6efa9fff298cdf3ec3e5d234220cafab6c0d5981d2fbbd0aa7b72005b4e4052e'

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
