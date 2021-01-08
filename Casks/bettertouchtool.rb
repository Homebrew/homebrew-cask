cask "bettertouchtool" do
  version "3.531,1670"
  sha256 "fd348565b08f221be3f855295972c3faafe9564f8cc57c888e5a1e279790c69c"

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
