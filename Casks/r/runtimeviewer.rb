cask "runtimeviewer" do
  version "2.1.1"
  sha256 "a501223110096f208abf00a7240090c0e65a51c85740897e68f80ddaa85a61cd"

  url "https://github.com/MxIris-Reverse-Engineering/RuntimeViewer/releases/download/v#{version}/RuntimeViewer-macOS.zip"
  name "RuntimeViewer"
  desc "Inspect Objective-C and Swift runtime interfaces"
  homepage "https://github.com/MxIris-Reverse-Engineering/RuntimeViewer"

  livecheck do
    url "https://mxiris-reverse-engineering.github.io/RuntimeViewer/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "RuntimeViewer.app"

  zap trash: [
    "/Library/LaunchDaemons/com.JH.RuntimeViewerService.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.jh.runtimeviewer.sfl*",
    "~/Library/Application Support/RuntimeViewer",
    "~/Library/Caches/com.JH.RuntimeViewer",
    "~/Library/HTTPStorages/com.JH.RuntimeViewer",
    "~/Library/Preferences/com.JH.RuntimeViewer.plist",
    "~/Library/Saved Application State/com.JH.RuntimeViewerCatalystHelper~iosmac.savedState",
  ]
end
