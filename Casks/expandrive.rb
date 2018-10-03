cask 'expandrive' do
  version '6.2.0'
  sha256 'e3b7dfdd68c5930039d59aa1d9ae51a8cc6aa78b905cdf9427a38db38c014596'

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
