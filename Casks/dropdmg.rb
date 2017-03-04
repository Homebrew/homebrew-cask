cask 'dropdmg' do
  version '3.4.5'
  sha256 '7bfe7042a454debefbfc17d52d57c407a416b10c78b1944f8c3b11152bfd1c22'

  url "https://c-command.com/downloads/DropDMG-#{version}.dmg"
  name 'DropDMG'
  homepage 'https://c-command.com/dropdmg/'

  app 'DropDMG.app'

  zap delete: [
                '~/Library/Automator/DropDMG.action',
                '~/Library/Automator/Expand Disk Image.action',
                '~Library/Preferences/com.c-command.DropDMG.plist',
              ]
end
