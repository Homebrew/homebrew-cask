cask 'expandrive' do
  version '6.1.12'
  sha256 '9d7d04965cacb2be67516e3bc3d747e7bcfe94472cd4872811c0a2b29266b215'

  url "https://updates.expandrive.com/apps/expandrive/v/#{version.dots_to_hyphens}/download.zip"
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
