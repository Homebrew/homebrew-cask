cask "bettertouchtool" do
  version "3.506-1644"
  sha256 "97a9b11874ff60cb407b069f95b4feefd1aec7b574ffa5ad17ed555af7bd47e2"

  url "https://folivora.ai/releases/btt#{version}.zip"
  appcast "https://updates.folivora.ai/appcast_manual.xml"
  name "BetterTouchTool"
  desc "Tool to customize input devices and automate computer systems"
  homepage "https://folivora.ai/"

  auto_updates true

  app "BetterTouchTool.app"

  zap trash: [
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
    "~/Library/Application Support/BetterTouchTool",
  ]
end
