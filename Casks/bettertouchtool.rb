cask "bettertouchtool" do
  version "3.402-1633"
  sha256 "578f2e62805ae21e880c60e13ec455ec6057745edaff14214eb5c6eac5cf7705"

  url "https://folivora.ai/releases/BetterTouchTool.zip"
  appcast "https://www.corecode.io/macupdater/appcasts/bettertouchtool.txt"
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
