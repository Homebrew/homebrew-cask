cask 'bluestacks' do
  version '4.140.12.2902,4804ca37dfe9b788ed01b47f9d19bdd9'
  sha256 '2bdac4e3a7706726c195fab3bc1fe1f5c20b46c8c2455151aec224ef6ffb3e0a'

  url "https://cdn3.bluestacks.com/downloads/mac/bgp64_mac/#{version.before_comma}/#{version.after_comma}/x64/BlueStacksInstaller_#{version.before_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://cloud.bluestacks.com/api/getdownloadnow?platform=mac',
          configuration: version.before_comma
  name 'BlueStacks'
  homepage 'https://www.bluestacks.com/'

  depends_on macos: '>= :sierra'

  installer manual: 'BlueStacks Installer.app'

  uninstall_preflight do
    set_ownership "#{appdir}/BlueStacks.app"
  end

  uninstall launchctl: [
                         'com.BlueStacks.AppPlayer.bstservice_helper',
                         'com.BlueStacks.AppPlayer.Service',
                         'com.BlueStacks.AppPlayer.UninstallWatcher',
                         'com.BlueStacks.AppPlayer.Updater',
                       ],
            delete:    '/Library/PrivilegedHelperTools/com.BlueStacks.AppPlayer.bstservice_helper'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bluestacks.bluestacks.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bluestacks.bluestacks-support-tool.sfl*',
               '~/Library/BlueStacks',
               '~/Library/Caches/com.bluestacks.BlueStacks',
               '~/Library/Caches/com.bluestacks.BlueStacks-Support-Tool',
               '~/Library/Caches/KSCrashReports/BlueStacks',
               '~/Library/Logs/BlueStacks',
               '~/Library/Preferences/com.BlueStacks.AppPlayer.DiagnosticTimestamp.txt',
               '~/Library/Preferences/com.BlueStacks.AppPlayer.plist',
               '~/Library/Preferences/com.BlueStacks.AppPlayer.SavedFrame.plist',
               '~/Library/Preferences/com.bluestacks.BlueStacks.plist',
             ],
      rmdir: '~/Library/Caches/KSCrashReports'
end
