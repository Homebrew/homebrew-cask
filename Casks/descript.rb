cask "descript" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "38.1.1-release.20220429.7"

  if Hardware::CPU.intel?
    sha256 "28c91f865c70a6aafeb72cff237a19731fca2f4a3923985bbeea1e20cbfc9c34"
  else
    sha256 "6fe36e01ec6f8bfb3d43ebd039771ba18c70596d09a86a8442040e3067e1c106"
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
