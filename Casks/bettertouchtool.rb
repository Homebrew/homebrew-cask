cask "bettertouchtool" do
  version "3.402"
  sha256 "578f2e62805ae21e880c60e13ec455ec6057745edaff14214eb5c6eac5cf7705"

  url "https://folivora.ai/releases/BetterTouchTool.zip"
  appcast "https://updates.folivora.ai/bettertouchtool_release_notes.html"
  name "BetterTouchTool"
  homepage "https://folivora.ai/"

  auto_updates true

  app "BetterTouchTool.app"

  zap trash: [
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
    "~/Library/Application Support/BetterTouchTool",
  ]
end
