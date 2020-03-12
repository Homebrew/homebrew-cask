cask 'surge' do
  version '3.3.3-939'
  sha256 'a1c62888290968c88a4a7d4631b7767c2b220109472cbf306484397238c6c2b1'

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
  appcast "https://www.nssurge.com/mac/v#{version.major}/appcast-signed.xml"
  name 'Surge'
  homepage 'https://nssurge.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app 'Surge.app'

  uninstall launchctl: 'com.nssurge.surge-mac.helper',
            delete:    '/Library/PrivilegedHelperTools/com.nssurge.surge-mac.helper'

  zap delete: [
                '~/Library/Application Support/com.nssurge.surge-mac',
                '~/Library/Caches/com.nssurge.surge-mac',
                '~/Library/Caches/com.nssurge.surge-mac.plist',
                '~/Library/Logs/Surge',
                '~/Library/Preferences/com.nssurge.surge-mac.plist',
              ]
end
