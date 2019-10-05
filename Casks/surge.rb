cask 'surge' do
  version '3.3.1-897'
  sha256 'bf148485e5a38dd38f60e6184f0c03ac9a28ebc25bebc078f9fa60e4f5a2be2a'

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
