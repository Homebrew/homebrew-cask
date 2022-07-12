cask "descript" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "43.1.0-release.20220706.19"

  if Hardware::CPU.intel?
    sha256 "40be44f05b7cdb77f7ec8931686c4764557d21d8982f060123202585f6acd4f9"
  else
    sha256 "dc90f8a79e13eea4ddb7f5823103e92e14e4c78ee8c5e6b5fd8cdd080382e730"
  end

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
