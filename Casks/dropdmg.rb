cask 'dropdmg' do
  version '3.4.3'
  sha256 '08a28c53da65a6241bcc312612697fa4a43b974d3b704aab2047d1a8216dc1ee'

  url "https://c-command.com/downloads/DropDMG-#{version}.dmg"
  name 'DropDMG'
  homepage 'https://c-command.com/dropdmg/'

  depends_on macos: '>= :snow_leopard'
  depends_on arch: :intel

  app 'DropDMG.app'

  zap delete: [
                '~/Library/Automator/DropDMG.action',
                '~/Library/Automator/Expand Disk Image.action',
                '~Library/Preferences/com.c-command.DropDMG.plist',
              ]
end
