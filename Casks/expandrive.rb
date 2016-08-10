cask 'expandrive' do
  version '5.3.2'
  sha256 'dc7f7b94f3f330dfd4c8ea8b8bf07def1fe57afb860fa14b3672a00d3e29bd62'

  url "https://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'https://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: '519991100ee4d5e31d5d9a916dd56efc8d97a99403da313acebef87adc6e4ff6'
  name 'ExpanDrive'
  homepage 'https://www.expandrive.com/expandrive'
  license :commercial

  app 'ExpanDrive.app'

  zap delete: [
                '~/Library/Application Support/ExpanDrive',
                '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
              ]
end
