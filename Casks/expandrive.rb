cask 'expandrive' do
  version '6.4.5'
  sha256 'a9a7b6acaa51257c7bcc5e82474c9f799542a37acc960470e5c35525036556af'

  url "https://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.zip"
  appcast 'https://updates.expandrive.com/appcast/expandrive.xml?version=4'
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
