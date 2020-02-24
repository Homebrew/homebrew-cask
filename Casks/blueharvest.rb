cask 'blueharvest' do
  version '7.2.1'
  sha256 '1f7f7c03b39760ae167fe14613e75d351af86e8c78b3a007b9055538327cdb48'

  url "https://zeroonetwenty.com/blueharvest/downloads/BlueHarvest#{version.no_dots}.dmg"
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
