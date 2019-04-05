cask 'surge' do
  version '3.1.1-811'
  sha256 'f150a311102601face146e13df394304d5eea2254811f23769b259b19c8ea935'

  url "https://www.nssurge.com/mac/v#{version.major}/Surge-#{version}.zip"
  appcast "https://www.nssurge.com/mac/v#{version.major}/appcast.xml"
  name 'Surge'
  homepage 'https://nssurge.com/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

  app "Surge #{version.major}.app"

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
