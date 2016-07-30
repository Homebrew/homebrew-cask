cask 'expandrive' do
  version '5.3.2'
  sha256 'dc7f7b94f3f330dfd4c8ea8b8bf07def1fe57afb860fa14b3672a00d3e29bd62'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: '8adfd66ed23f4f41408a5c0fdb9188469278a8ba77335e7b1dd41419304ba103'
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
