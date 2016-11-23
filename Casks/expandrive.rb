cask 'expandrive' do
  version '5.4.2'
  sha256 'defcfb288dc46f0ad3ae5543a9c84d20a8efd528374fc1e5f58be97a520b0860'

  url "https://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'https://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: '001bb695168f7cb477562f2656f535759fd5bc1e5be24def15d780a2141eb909'
  name 'ExpanDrive'
  homepage 'https://www.expandrive.com/apps/expandrive/'

  app 'ExpanDrive.app'

  zap delete: [
                '~/Library/Application Support/ExpanDrive',
                '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
              ]
end
