cask "bluestacks" do
  version "5.21.715.7538,0cfdd0b090594e07b9583474283914fa"
  sha256 "c38867dce3d141772c2699dfe1a3403a2f924d1da0a305cc89411bdb7ed92459"

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
  depends_on macos: ">= :big_sur"

  pkg "BlueStacksInstaller_#{version.csv.first}.pkg"

  uninstall launchctl: "com.now.gg.BlueStacks.cleanup",
            pkgutil:   [
              "com.now.gg.BlueStacks",
              "com.now.gg.BlueStacksMIM",
            ],
            delete:    "/Applications/BlueStacksMIM.app"

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
