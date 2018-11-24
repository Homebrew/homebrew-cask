cask 'expandrive' do
  version '6.3.0'
  sha256 'fa558380dc3a385c1f384c8dffb2662acb70fc6eae6e19076616f7c21da2c4a5'

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
