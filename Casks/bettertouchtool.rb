cask "bettertouchtool" do
  version "3.503-1640"
  sha256 "f656ff551ab6d6016e279c92356d70965420972574fc5819860250eadf852be2"

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
