cask "bettertouchtool" do
  version "3.561-1701"
  sha256 "6f19467a71bec4ee992c61fe7fff762677c1d97856b6360f872aafc6f7c0a841"

  url "https://folivora.ai/releases/btt#{version}.zip"
  name "BetterTouchTool"
  desc "Tool to customize input devices and automate computer systems"
  homepage "https://folivora.ai/"

  livecheck do
    url "https://updates.folivora.ai/appcast.xml?trial=1"
    strategy :page_match
    regex(/btt(\d+(?:.\d+)*)\.zip/i)
  end

  auto_updates true

  app "BetterTouchTool.app"

  zap trash: [
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
    "~/Library/Application Support/BetterTouchTool",
  ]
end
