cask "descript" do
  arch arm: "-arm64"

  version "101.0.1-release.20241028.26598"
  sha256 arm:   "76392f42cc57bf46093adf4e1559e0f0d902147f1ed1221d96328d4b24152f1a",
         intel: "c2083d578aecf9ab0c674bb9b8c1ca9f4dbc0496358c472f2f85acc2226adf1d"

  url "https://electron.descript.com/Descript-#{version}#{arch}.dmg"
  name "Descript"
  desc "Audio and video editor"
  homepage "https://www.descript.com/"

  livecheck do
    url "https://electron.descript.com/master-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Descript.app"

  zap trash: [
    "~/Library/Application Support/Descript",
    "~/Library/Caches/com.descript.beachcube",
    "~/Library/Caches/com.descript.beachcube.ShipIt",
    "~/Library/Caches/com.descript.Descript-Installer",
    "~/Library/Preferences/com.descript.beachcube.plist",
    "~/Library/Preferences/com.descript.Descript-Installer.plist",
    "~/Library/Preferences/com.descript.ScreenRecorder.plist",
    "~/Library/Saved Application State/com.descript.beachcube.savedState",
    "~/Library/Saved Application State/com.descript.Descript-Installer.savedState",
  ]
end
