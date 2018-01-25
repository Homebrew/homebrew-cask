cask 'blueharvest' do
  version '6.4.2'
  sha256 '5d2551a04b71f61cd7a14b9eac1b3950e0d64f1b3dd47a0d731d8be3351332cb'

  url "http://zeroonetwenty.com/downloads/BlueHarvest#{version.no_dots}.dmg"
  appcast "https://cp37.ezyreg.com/~zeroonet/downloads/versioninfo/sparkle/blueharvest#{version.major}.xml",
          checkpoint: 'c08fa3242f5018c940c4b6df4fc6fdc86bb1cbaedfc6e09dbcfc86a3f9c5d61c'
  name 'BlueHarvest'
  homepage 'http://zeroonetwenty.com/blueharvest/'

  app 'BlueHarvest.app'

  uninstall delete:     '/Library/PrivilegedHelperTools/com.zeroonetwenty.BlueHarvestHelper630',
            launchctl:  'com.zeroonetwenty.BlueHarvestHelper630',
            login_item: 'BlueHarvest'

  zap trash: '~/Library/Preferences/com.zeroonetwenty.BlueHarvest5.plist'
end
