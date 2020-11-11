cask "bettertouchtool" do
  version "3.504-1642"
  sha256 "1bef5d7e27214861bba24e1d24869ae627f76e32fdb71aaecac7bcb7398c580a"

  url "https://folivora.ai/releases/btt3.504-1642.zip"
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
