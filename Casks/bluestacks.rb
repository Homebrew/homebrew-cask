cask "bluestacks" do
  version "4.270.0.2810,a5f1e323a8091d0a5babc78234949ae8"
  sha256 "ad89a9331ffdb3d6c5526f67741c56b289e100bf8dc4d7b8fe95dd368d9f2b86"

  url "https://cdn3.bluestacks.com/downloads/mac/bgp64_mac/#{version.before_comma}/#{version.after_comma}/x64/BlueStacksInstaller_#{version.before_comma}.dmg"
  name "BlueStacks"
  desc "Mobile gaming platform"
  homepage "https://www.bluestacks.com/"

  livecheck do
    url "https://cloud.bluestacks.com/api/getdownloadnow?platform=mac&mac_version=#{MacOS.full_version}"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d(?:\.\d+)*)/([^/]+)/})
      "#{match[1]},#{match[2]}"
    end
  end

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
