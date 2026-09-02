cask "bettertouchtool" do
  version "6.771,2026090202"
  sha256 "735197abc73e506538bea7af4d9ba8a62e188bd03c3285c11612c46f5f1c9a3b"

  url "https://folivora.ai/releases/btt#{version.csv.first}-#{version.csv.second}.zip"
  name "BetterTouchTool"
  desc "Tool to customise input devices and automate computer systems"
  homepage "https://folivora.ai/"

  livecheck do
    url "https://updates.folivora.ai/appcast_manual.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "bettertouchtool@alpha"
  depends_on macos: :monterey

  app "BetterTouchTool.app"

  uninstall quit: "com.hegenberg.BetterTouchTool"

  zap trash: [
    "~/Library/Application Scripts/com.hegenberg.BetterTouchTool.BetterTouchTool-Widgets",
    "~/Library/Application Scripts/com.hegenberg.BetterTouchTool.BTTFinderContextMenu",
    "~/Library/Application Support/BetterTouchTool",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hegenberg.bettertouchtool.sfl*",
    "~/Library/Caches/com.hegenberg.BetterTouchTool",
    "~/Library/Containers/com.hegenberg.BetterTouchTool.BetterTouchTool-Widgets",
    "~/Library/Containers/com.hegenberg.BetterTouchTool.BTTFinderContextMenu",
    "~/Library/HTTPStorages/com.hegenberg.BetterTouchTool",
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
  ]
end
