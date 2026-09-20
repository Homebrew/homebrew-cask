cask "bettertouchtool" do
  version "6.836,2026091904"
  sha256 "dfd6b57c93750616893f548c71efff9596645bfa4d5974fc97637cee06c29699"

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
