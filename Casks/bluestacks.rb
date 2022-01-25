cask "bluestacks" do
  version "4.270.1.2803,c610c2d26a70cad789a74e586a08e51f"
  sha256 "a2e76c99a78d9c2559c2f0d2d1ab069f8f721468ec887939746820ef02927dc3"

  url "https://cdn3.bluestacks.com/downloads/mac/bgp64_mac/#{version.csv.first}/#{version.csv.second}/x64/BlueStacksInstaller_#{version.csv.first}.dmg"
  name "BlueStacks"
  desc "Mobile gaming platform"
  homepage "https://www.bluestacks.com/"

  livecheck do
    url "https://cloud.bluestacks.com/api/getdownloadnow?platform=mac&mac_version=#{MacOS.full_version}"
    strategy :header_match do |headers|
      match = headers["location"].match(%r{/(\d(?:\.\d+)*)/([^/]+)/})
      next if match.blank?

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
