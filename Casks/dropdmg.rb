cask 'dropdmg' do
  version '3.2.7'
  sha256 '5f27c67364cef6569633b98e250f73119016249ec7ec06908c117a008dc6c55f'

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
