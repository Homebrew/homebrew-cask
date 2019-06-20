cask 'bluestacks' do
  version '4.90.0.2809'
  sha256 '7ccf00b60d4e2682cad1a6426b9b796f6996c01cd61e1cab93641ce657dcc2fa'

  url "https://cdn3.bluestacks.com/downloads/mac/bgp_mac/#{version}/BlueStacksInstaller_#{version}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://cloud.bluestacks.com/api/getdownloadnow?platform=mac'
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
