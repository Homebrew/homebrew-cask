cask "bettertouchtool" do
  version "3.551,1691"
  sha256 "4c18b83d4f8eac0c771ab4488ec392fd2256bd3a514734da2eb97baea71fcd09"

  url "https://folivora.ai/releases/btt#{version.before_comma}-#{version.after_comma}.zip"
  name "BetterTouchTool"
  desc "Tool to customize input devices and automate computer systems"
  homepage "https://folivora.ai/"

  livecheck do
    url "https://updates.folivora.ai/appcast.xml?trial=1"
    strategy :sparkle
  end

  auto_updates true

  app "BetterTouchTool.app"

  zap trash: [
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
    "~/Library/Application Support/BetterTouchTool",
  ]
end
