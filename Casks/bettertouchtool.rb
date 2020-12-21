cask "bettertouchtool" do
  version "3.508-1646"
  sha256 "51b7c0ed3aacf0f9b3a6825dde1cbbdcdf9e1ceeb35e315db119014f1ffac81d"

  url "https://folivora.ai/releases/btt#{version}.zip"
  appcast "https://updates.folivora.ai/bettertouchtool_release_notes.html"
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
