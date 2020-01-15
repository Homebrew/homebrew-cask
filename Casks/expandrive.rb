cask 'expandrive' do
  version '7.4.7'
  sha256 'c69bd3c64e262ae93922900e92620fc4df86fb69a993d86f945f02c3f3db976d'

  url "https://updates.expandrive.com/apps/expandrive#{version.major}/v/#{version.dots_to_hyphens}/update_download"
  appcast "https://updates.expandrive.com/appcast/expandrive#{version.major}.json?version=#{version.major}.0.0"
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
