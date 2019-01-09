cask 'shifty' do
  version '1.0.1'
  sha256 'c2ff7ea5611276d3867f46af452b26099802a9b6aa2460f8cbf75c6f6d9f0551'

  # github.com/thompsonate/Shifty was verified as official when first introduced to the cask
  url "https://github.com/thompsonate/Shifty/releases/download/v#{version}/Shifty-#{version}.zip"
  appcast 'https://github.com/thompsonate/Shifty/releases.atom'
  name 'Shifty'
  homepage 'https://shifty.natethompson.io/'

  depends_on macos: '>= :sierra'

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
