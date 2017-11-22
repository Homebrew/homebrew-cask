cask 'shifty' do
  version '0.4'
  sha256 '1210d460c47fbe4a568a46580ad6813eb57d5febde2c051ace0d15361a58b0c2'

  # github.com/thompsonate/Shifty was verified as official when first introduced to the cask
  url "https://github.com/thompsonate/Shifty/releases/download/#{version}/Shifty-#{version}.dmg"
  appcast 'https://github.com/thompsonate/Shifty/releases.atom',
          checkpoint: '091dab551dbe0da56144870b3c8adb817c0b948bf9b335767257b5b791c745ff'
  name 'Shifty'
  homepage 'http://shifty.natethompson.io/'

  app 'Shifty.app'

  uninstall launchctl: 'io.natethompson.ShiftyHelper',
            quit:      'io.natethompson.Shifty'

  zap trash: [
               '~/Library/Application Scripts/io.natethompson.ShiftyHelper',
               '~/Library/Application Support/io.natethompson.Shifty',
               '~/Library/Caches/com.crashlytics.data/io.natethompson.Shifty',
               '~/Library/Caches/io.fabric.sdk.mac.data/io.natethompson.Shifty',
               '~/Library/Caches/io.natethompson.Shifty',
               '~/Library/Containers/io.natethompson.ShiftyHelper',
               '~/Library/Preferences/io.natethompson.Shifty.plist',
             ]
end
