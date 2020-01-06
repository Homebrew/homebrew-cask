cask 'blueharvest' do
  version '7.2.0'
  sha256 '5ac6ff545f65a1240e96ab86ba801d2ad0a338871825e96c435ca8e373a51e0a'

  url "https://zeroonetwenty.com/downloads/BlueHarvest#{version.no_dots}.dmg"
  appcast 'https://zeroonetwenty.com/blueharvest/release-notes.html'
  name 'BlueHarvest'
  homepage 'https://zeroonetwenty.com/blueharvest/'

  app 'BlueHarvest.app'

  uninstall delete:    "/Library/PrivilegedHelperTools/com.zeroonetwenty.BlueHarvestHelper#{version.major}",
            launchctl: "com.zeroonetwenty.BlueHarvestHelper#{version.major}",
            quit:      'com.zeroonetwenty.BlueHarvest5'

  zap trash: [
               '~/Library/Caches/com.zeroonetwenty.BlueHarvest5',
               '~/Library/Preferences/com.zeroonetwenty.BlueHarvest5.plist',
             ]
end
