cask 'expandrive' do
  version '5.5.4'
  sha256 'cd315e227a1fc4719a77760de6b7a27f6b5dd9036a58319352e72fbbaa60a623'

  url "https://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'https://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: '5ef57ba7165a2afc67ab96fd08e68aed3a2a90a273fa717b887c0c34040b2ca7'
  name 'ExpanDrive'
  homepage 'https://www.expandrive.com/apps/expandrive/'

  app 'ExpanDrive.app'

  zap trash: [
               '~/Library/Application Support/ExpanDrive',
               '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
               '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
             ]
end
