cask "ltx-desktop" do
  version "1.0.3"
  sha256 "8d500f73f9fd7df1f7a49089310e18e43643a7aef13ef625af5b270803a480b6"

  url "https://github.com/Lightricks/LTX-Desktop/releases/download/v#{version}/LTX-Desktop-arm64.dmg",
      verified: "github.com/Lightricks/LTX-Desktop/"
  name "LTX Desktop"
  desc "Desktop app for generating videos with LTX models"
  homepage "https://ltx.io/ltx-desktop"

  auto_updates true
  depends_on macos: ">= :monterey"
  depends_on arch: :arm64

  app "LTX Desktop.app"

  uninstall quit: "com.lightricks.ltx-desktop"

  zap trash: [
    "~/Library/Preferences/com.lightricks.ltx-desktop.plist",
    "~/Library/Saved Application State/com.lightricks.ltx-desktop.savedState",
  ]
end
