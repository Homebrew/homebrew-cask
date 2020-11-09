cask "bluestacks" do
  version "4.230.10.2820,37a27c1765e16b22ca7c3bddc42177bd"
  sha256 "9af74c675d4161593c6537b350a7ce0d4de3def535b652bac918f815fc48266e"

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
