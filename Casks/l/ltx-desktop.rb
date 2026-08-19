cask "ltx-desktop" do
  version "1.2.4"
  sha256 "e741aa859283722e697f6ced30625f135d56fbcc31d3d15153ca8a784aeb7356"

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
