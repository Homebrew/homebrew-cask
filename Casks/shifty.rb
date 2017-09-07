cask 'shifty' do
  version '0.2'
  sha256 '2810714ef55f09dbadd3ba2ae7b8126aaba8dd397651726b06b4f816c3af0c84'

  # github.com/thompsonate/Shifty was verified as official when first introduced to the cask
  url "https://github.com/thompsonate/Shifty/releases/download/#{version}/Shifty-#{version}.dmg"
  appcast 'https://github.com/thompsonate/Shifty/releases.atom',
          checkpoint: '76467b5b95772d424c2fdb843fdc4c8f4021a5638d3a9496a2cff305e9ec5340'
  name 'Shifty'
  homepage 'http://shifty.natethompson.io/'

  app 'Shifty.app'

  uninstall launchctl: 'io.natethompson.ShiftyHelper',
            quit:      'io.natethompson.Shifty'

  zap delete: [
                '~/Library/Application Scripts/io.natethompson.ShiftyHelper',
                '~/Library/Caches/com.crashlytics.data/io.natethompson.Shifty',
                '~/Library/Caches/io.fabric.sdk.mac.data/io.natethompson.Shifty',
                '~/Library/Caches/io.natethompson.Shifty',
                '~/Library/Containers/io.natethompson.ShiftyHelper',
              ],
      trash:  [
                '~/Library/Application Support/io.natethompson.Shifty',
                '~/Library/Preferences/io.natethompson.Shifty.plist',
              ]
end
