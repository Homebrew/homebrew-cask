cask 'expandrive' do
  version '5.3.0'
  sha256 '4cc93c9c71b295d43e2482f1a16e286747c7cafaf7d8725ee15e37ed17268aa5'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: '9d4c58aeb0bf291ce46cce2008bdcbd7e8f1f840efd4d9d993cd6c07901f1f5d'
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
