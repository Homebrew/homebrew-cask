cask "bettertouchtool" do
  version "3.505-1643"
  sha256 "114c6952ed16b5339e87309a45216f8a07f17e5b9338772b0fc8ff533cd825b0"

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
