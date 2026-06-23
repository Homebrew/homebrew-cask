cask "bluestacks" do
  version "5.21.775.7503,6793f5fb221041b28a039e229915af23"
  sha256 "87d9e6f4c13ebb5c6bda3054f6fc7b76d630ae300041f702e00d0ba836c2e98c"

  url "https://ak-build.bluestacks.com/public/app-player/mac/nxt_mac2/#{version.csv.first}/#{version.csv.second}/BlueStacksInstaller_#{version.csv.first}.pkg"
  name "BlueStacks"
  desc "Mobile gaming platform"
  homepage "https://www.bluestacks.com/"

  livecheck do
    url "https://cloud.bluestacks.com/api/getdownloadnow?platform=mac"
    regex(%r{/(\d+(?:\.\d+)*)/([^/]+)/}i)
    strategy :header_match do |headers, regex|
      match = headers["location"]&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  pkg "BlueStacksInstaller_#{version.csv.first}.pkg"

  uninstall launchctl: "com.now.gg.BlueStacks.cleanup",
            pkgutil:   [
              "com.now.gg.BlueAI",
              "com.now.gg.BlueStacks",
              "com.now.gg.BlueStacksAirMIM",
              "com.now.gg.BlueStacksMIM",
            ],
            delete:    [
              "/Applications/BlueStacks Air multi-instance manager.app",
              "/Applications/BlueStacksMIM.app",
            ]

  zap trash: [
        "/Users/Shared/Library/Application Support/BlueStacks",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bluestacks.bluestacks-support-tool.sfl*",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bluestacks.bluestacks.sfl*",
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
