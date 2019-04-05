cask 'dropdmg' do
  version '3.5.5'
  sha256 '04fbf7aa669b4bb33c8590febe89773d1f6ff63c6d6413e94487eacb13ea0489'

  url "https://c-command.com/downloads/DropDMG-#{version}.dmg"
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
