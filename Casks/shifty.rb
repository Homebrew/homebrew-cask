cask 'shifty' do
  version '1.0'
  sha256 '7a039cc437961dd46d213305ef1d18bdccd3ca9260dbfce77a4eecfa53a9b49c'

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
