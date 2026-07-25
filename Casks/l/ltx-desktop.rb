cask "ltx-desktop" do
  version "1.1.0"
  sha256 "0180ae4dbade3071427e27cd9192ee4bbe2047080f4e8c7756625093a2181c1c"

  url "https://github.com/Lightricks/LTX-Desktop/releases/download/v#{version}/LTX-Desktop-arm64.dmg",
      verified: "github.com/Lightricks/LTX-Desktop/"
  name "LTX Desktop"
  desc "Desktop app for generating videos with LTX models"
  homepage "https://ltx.io/ltx-desktop"

  auto_updates true
  depends_on macos: :monterey
  depends_on arch: :arm64

  app "LTX Desktop.app"

  uninstall quit: "com.lightricks.ltx-desktop"

  zap trash: [
    "~/Library/Preferences/com.lightricks.ltx-desktop.plist",
    "~/Library/Saved Application State/com.lightricks.ltx-desktop.savedState",
  ]
end
