cask "bettertouchtool" do
  version "3.502-1639"
  sha256 "7fd688ba7bef185315e4fa767c7cfc20b5ef4b420f9db2d33dd44398b2790cc4"

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
