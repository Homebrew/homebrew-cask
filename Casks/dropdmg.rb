cask 'dropdmg' do
  version '3.2.9'
  sha256 '63b660352cd067d42ab3a7fbea3dff8ea5c9bf4bedc174313c0b59d392b37a3f'

  url "https://c-command.com/downloads/DropDMG-#{version}.dmg"
  name 'DropDMG'
  homepage 'https://c-command.com/dropdmg/'
  license :commercial

  depends_on macos: '>= :snow_leopard'
  depends_on arch: :intel

  app 'DropDMG.app'

  zap delete: [
                '~/Library/Automator/DropDMG.action',
                '~/Library/Automator/Expand Disk Image.action',
                '~Library/Preferences/com.c-command.DropDMG.plist',
              ]
end
