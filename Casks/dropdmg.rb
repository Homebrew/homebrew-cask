cask 'dropdmg' do
  version '3.4.2'
  sha256 '540b0fd410f1cbd5c114af2acfaf8a7b032ff82cc9edf603af6b59b1a8b53ebf'

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
