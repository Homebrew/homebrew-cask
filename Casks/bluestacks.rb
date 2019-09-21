cask 'bluestacks' do
  version '4.130.1.2809,bed43ee634f0a39bab766bd697cc09ab'
  sha256 '36e6c4700d3b7847119fd2f9aa9cadb82dcbb35372d43b59ad47d28f13720098'

  url "https://cdn3.bluestacks.com/downloads/mac/bgp64_mac/#{version.before_comma}/#{version.after_comma}/x64/BlueStacksInstaller_#{version.before_comma}.dmg"
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
