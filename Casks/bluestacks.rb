cask "bluestacks" do
  version "4.240.0.2802,5dbfa584e83ee221487edff5ba7f493e"
  sha256 "8f519a4742ea2ce0453eee7e2505f6ed6983b92d29a74db23d18ae891e8850b2"

  url "https://cdn3.bluestacks.com/downloads/mac/bgp64_mac/#{version.before_comma}/#{version.after_comma}/x64/BlueStacksInstaller_#{version.before_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://cloud.bluestacks.com/api/getdownloadnow?platform=mac",
          must_contain: version.before_comma
  name "BlueStacks"
  desc "Mobile gaming platform"
  homepage "https://www.bluestacks.com/"

  depends_on macos: ">= :sierra"

  installer manual: "BlueStacks Installer.app"

  uninstall_preflight do
    set_ownership "/Applications/BlueStacks.app"
  end

  uninstall launchctl: [
    "com.BlueStacks.AppPlayer.bstservice_helper",
    "com.BlueStacks.AppPlayer.Service",
    "com.BlueStacks.AppPlayer.UninstallWatcher",
    "com.BlueStacks.AppPlayer.Updater",
  ],
            delete:    [
              "/Applications/BlueStacks.app",
              "/Library/PrivilegedHelperTools/com.BlueStacks.AppPlayer.bstservice_helper",
            ]

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bluestacks.bluestacks.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bluestacks.bluestacks-support-tool.sfl*",
    "~/Library/BlueStacks",
    "~/Library/Caches/com.bluestacks.BlueStacks",
    "~/Library/Caches/com.bluestacks.BlueStacks-Support-Tool",
    "~/Library/Caches/KSCrashReports/BlueStacks",
    "~/Library/Logs/BlueStacks",
    "~/Library/Preferences/com.BlueStacks.AppPlayer.DiagnosticTimestamp.txt",
    "~/Library/Preferences/com.BlueStacks.AppPlayer.plist",
    "~/Library/Preferences/com.BlueStacks.AppPlayer.SavedFrame.plist",
    "~/Library/Preferences/com.bluestacks.BlueStacks.plist",
  ],
      rmdir: "~/Library/Caches/KSCrashReports"
end
