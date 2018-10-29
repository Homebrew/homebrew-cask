cask 'blueharvest' do
  version '7.1.1'
  sha256 '10a82c20d1e1a00a4500b1d98c9d275a9ae4c03047907cd544755d3c253e28ce'

  url "https://zeroonetwenty.com/downloads/BlueHarvest#{version.no_dots}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml'
  name 'BlueHarvest'
  homepage 'https://zeroonetwenty.com/blueharvest/'

  app 'BlueHarvest.app'

  uninstall delete:     "/Library/PrivilegedHelperTools/com.zeroonetwenty.BlueHarvestHelper#{version.major}",
            launchctl:  "com.zeroonetwenty.BlueHarvestHelper#{version.major}",
            login_item: 'BlueHarvest',
            quit:       'com.zeroonetwenty.BlueHarvest5'

  zap trash: [
               '~/Library/Caches/com.zeroonetwenty.BlueHarvest5',
               '~/Library/Preferences/com.zeroonetwenty.BlueHarvest5.plist',
             ]
end
