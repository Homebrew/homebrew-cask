cask "ltx-desktop" do
  version "1.0.4"
  sha256 "232084949e381149c967de856f5e3fa1852794fd00bd0d1bd7b437d09638c52d"

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
