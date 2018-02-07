cask 'blueharvest' do
  version '7.0.2'
  sha256 'dc86c780095ee4a32b070a14a5f9447865df482bcfe64d16510134f81734fecc'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.no_dots}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          checkpoint: '3b5ac8c61a90882c2d019a69d134ffdf1bd2fc96f1381d1c6f22e26fa9fb74d5'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'

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
