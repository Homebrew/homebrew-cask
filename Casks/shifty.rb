cask 'shifty' do
  version '0.5'
  sha256 'b51402a4750d65a4700a8e95bfe90f6eabc02dacd0ef07d46a3bc65689b18a8c'

  # github.com/thompsonate/Shifty was verified as official when first introduced to the cask
  url "https://github.com/thompsonate/Shifty/releases/download/#{version}/Shifty-#{version}.dmg"
  appcast 'https://github.com/thompsonate/Shifty/releases.atom',
          checkpoint: '2e8720515a8f81dbd6328ea62c1bdfe0d1c938237a0e1401daf5720052ad3b37'
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
