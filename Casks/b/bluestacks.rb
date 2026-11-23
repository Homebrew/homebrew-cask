cask "bluestacks" do
  version "5.21.795.7549,af66de44892346fda48a77cf7df20d62"
  sha256 "6750e1d1cf5fdae6b72f3e30808c1b20d1e5b24d310b22cd2da1e0e1c0c647ae"

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
  depends_on :macos

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
        "~/Library/Caches/com.now.gg.BlueStacks",
        "~/Library/Caches/KSCrashReports/BlueStacks",
        "~/Library/HTTPStorages/com.now.gg.BlueStacks",
        "~/Library/Logs/BlueStacks",
        "~/Library/Preferences/com.BlueStacks.AppPlayer.DiagnosticTimestamp.txt",
        "~/Library/Preferences/com.BlueStacks.AppPlayer.plist",
        "~/Library/Preferences/com.BlueStacks.AppPlayer.SavedFrame.plist",
        "~/Library/Preferences/com.bluestacks.BlueStacks.plist",
      ],
      rmdir: "~/Library/Caches/KSCrashReports"
end
