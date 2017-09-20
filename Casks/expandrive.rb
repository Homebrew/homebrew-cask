cask 'expandrive' do
  version '6.0.16'
  sha256 '44b2e869898574f2d7ee19b4f9e5ebddfd81ef5d32e7e742270536d35676d953'

  url "https://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'https://updates.expandrive.com/appcast/expandrive.xml',
          checkpoint: '5ef57ba7165a2afc67ab96fd08e68aed3a2a90a273fa717b887c0c34040b2ca7'
  name 'ExpanDrive'
  homepage 'https://www.expandrive.com/apps/expandrive/'

  app 'ExpanDrive.app'

  zap trash: [
               '~/Library/Application Support/ExpanDrive',
               '~/Library/Preferences/com.expandrive.exfs.plist',
               '~/Library/Preferences/com.expandrive.ExpanDrive.plist',
               '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
               '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
               '~/Library/Preferences/com.expandrive.ExpanDrive.helper.plist',
             ]
end
