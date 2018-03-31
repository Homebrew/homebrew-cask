cask 'blueharvest' do
  version '7.0.3'
  sha256 '6597dd3dcc3add8122b622c8b68f1e43aedd545c33599936e5694aef541d43f1'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.no_dots}.dmg"
  appcast 'https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest6.xml',
          checkpoint: 'b8f2f64d138c193a37e0cc79eda227744fcfe3584e1d92b64399e372aceeb5d2'
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
