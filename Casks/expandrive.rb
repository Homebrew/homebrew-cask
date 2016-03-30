cask 'expandrive' do
  version '5.1.8'
  sha256 '3bd175284b226fa7713039c8d4c35f3bf9a1a2fa5490db5e5f38e3e8f7cabd60'

  url "http://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'http://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: 'f7259a5e6d01d01de57031e33232c4950aca3854850e23e53cbc4fd062e0e2f5'
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
