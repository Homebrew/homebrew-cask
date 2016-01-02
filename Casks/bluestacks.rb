cask 'bluestacks' do
  version '0.9.30.423902'
  sha256 '261bf6978770a16d588abba51d6e550c6b44de6d12de9bf54a0c0a751290e547'

  url "http://cdn.bluestacks.com/downloads/#{version}/BlueStacks-Installer.dmg"
  name 'BlueStacks'
  homepage 'http://www.bluestacks.com/'
  license :closed

  app 'BlueStacks.app'

  uninstall :launchctl => [
                           'com.BlueStacks.AppPlayer.bstservice_helper',
                           'com.BlueStacks.AppPlayer.Service',
                           'com.BlueStacks.AppPlayer.UninstallWatcher',
                           'com.BlueStacks.AppPlayer.Updater'
                          ],
            :delete    => '/Library/PrivilegedHelperTools/com.BlueStacks.AppPlayer.bstservice_helper'
  zap       :delete    => [
                           '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bluestacks.bluestacks.sfl',
                           '~/Library/BlueStacks',
                           '~/Library/Caches/com.bluestacks.BlueStacks',
                           '~/Library/Caches/KSCrashReports/BlueStacks',
                           '~/Library/Logs/BlueStacks',
                           '~/Library/Preferences/com.BlueStacks.AppPlayer.DiagnosticTimestamp.txt',
                           '~/Library/Preferences/com.BlueStacks.AppPlayer.plist',
                           '~/Library/Preferences/com.BlueStacks.AppPlayer.SavedFrame.plist',
                           '~/Library/Preferences/com.bluestacks.BlueStacks.plist'
                          ],
            :rmdir     => '~/Library/Caches/KSCrashReports'
end
