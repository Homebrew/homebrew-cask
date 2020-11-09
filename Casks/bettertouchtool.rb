cask "bettertouchtool" do
  version "3.404-1635"
  sha256 "d4480e1645c0410458fc8577e17967bd1fdc66cf8299e302c3c36ba6b7949210"

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
