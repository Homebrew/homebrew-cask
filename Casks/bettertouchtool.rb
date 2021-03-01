cask "bettertouchtool" do
  version "3.553,1693"
  sha256 "5b88c6c0a406c97c977a6cd56a58fc6f3abd94aa8f6619b41fcbfb632985485c"

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
