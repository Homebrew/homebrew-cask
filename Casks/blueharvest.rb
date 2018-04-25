cask 'blueharvest' do
  version '7.0.4'
  sha256 '569241d3259255e1251451da6c35aa8921388f4f8757c5706df2035e9c1d75a5'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.no_dots}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          checkpoint: 'b245af4b8935626ec2565a41f19c41e9cb654a5cbf988f416388a85f202f9320'
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
