cask 'surge' do
  version '3.4.0-989'
  sha256 '8e7dec6abc83ea0b604ba71df1f82eda1cd3decc4a61352c0ebb1e7884a6570e'

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
