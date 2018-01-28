cask 'blueharvest' do
  version '7.0.1'
  sha256 '13966aa3ac041533ccbd1ee0ff756e4f15930f2843bc3304955ebbbc71b799fb'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.no_dots}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          checkpoint: 'd62ab9b0052d3aadd47b4138134321df5eaa8ff3f34c2c638e86b4a1e5b83385'
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
