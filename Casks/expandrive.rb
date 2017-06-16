cask 'expandrive' do
  version '5.5.0'
  sha256 '537a2dd653d7e5442e0cd0eb2a07bae24e18bdf84a22df546423595b49a755ba'

  url "https://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.dmg"
  appcast 'https://updates.expandrive.com/appcast/expandrive.xml?version=3',
          checkpoint: 'ef7b60656f23aecb19ed13fa535bf8f85c8642312a3500ab0d2cdee19c974e6f'
  name 'ExpanDrive'
  homepage 'https://www.expandrive.com/apps/expandrive/'

  app 'ExpanDrive.app'

  zap delete: [
                '~/Library/Application Support/ExpanDrive',
                '~/Library/Preferences/com.expandrive.ExpanDrive2.plist',
                '~/Library/Preferences/com.expandrive.ExpanDrive3.plist',
              ]
end
