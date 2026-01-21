cask "bettertouchtool" do
  version "6.082,2026012006"
  sha256 "8e0615c0eec69823443b1dd3ddc4455f48365c41a4530a528c83bc56abefac87"

  url "https://folivora.ai/releases/btt#{version.csv.first}-#{version.csv.second}.zip"
  name "BetterTouchTool"
  desc "Tool to customise input devices and automate computer systems"
  homepage "https://folivora.ai/"

  livecheck do
    url "https://updates.folivora.ai/appcast_manual.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "bettertouchtool@alpha"
  depends_on macos: ">= :big_sur"

  app "BetterTouchTool.app"

  uninstall quit: "com.hegenberg.BetterTouchTool"

  zap trash: [
    "~/Library/Application Support/BetterTouchTool",
    "~/Library/Preferences/com.hegenberg.BetterTouchTool.plist",
  ]
end
