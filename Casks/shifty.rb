cask 'shifty' do
  version '0.5.2'
  sha256 '30a7d16d602d8756c4662b50ce4595f687ceb0a41abbabacab711e3a4b1b335d'

  # github.com/thompsonate/Shifty was verified as official when first introduced to the cask
  url "https://github.com/thompsonate/Shifty/releases/download/#{version}/Shifty-#{version}.dmg"
  appcast 'https://github.com/thompsonate/Shifty/releases.atom'
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
