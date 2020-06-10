cask 'native-access' do
  version '1.12.1.129'
  sha256 '21d7f6cde1a173c12392e323bf8d23e51460f389e38552c367bb8ab41d61f20e'

  url 'https://native-instruments.com/fileadmin/downloads/Native_Access_Installer.dmg'
  appcast "https://native-instruments.com/forum/threads/official-update-status-native-access-current-version-#{version.major_minor_patch.dots_to_hyphens}.313999",
          configuration: version.major_minor_patch
  name 'Native Access'
  homepage 'https://native-instruments.com/specials/native-access'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Native Access.app'

  uninstall quit:      'com.native-instruments.Native Access',
            launchctl: 'com.native-instruments.NativeAccess.Helper2',
            delete:    [
                         '/Library/PrivilegedHelperTools/com.native-instruments.NativeAccess.Helper2',
                         '/Library/Application Support/Native Instruments/Helper/NIHelperAuth',
                       ],
            rmdir:     [
                         '/Library/Application Support/Native Instruments/*',
                         '/Library/Application Support/Native Instruments',
                       ]

  zap trash: [
               '/Library/Application Support/Native Instruments/Service Center/NativeAccess.xml',
               '~/Library/Application Support/Native Instruments/Native Access*',
               '~/Library/Application Support/Native Instruments/Service Center',
               '~/Library/Application Support/CrashReporter/Native Access_*.plist',
               '~/Library/Caches/Native Instruments/Native Access*',
               '~/Library/Preferences/com.native-instruments.Native Access.plist',
               '~/Library/Preferences/com.native-instruments.Shared.plist',
             ],
      rmdir: [
               '/Library/Application Support/Native Instruments/*',
               '/Library/Application Support/Native Instruments',
               '~/Library/Application Support/Native Instruments',
             ]
end
