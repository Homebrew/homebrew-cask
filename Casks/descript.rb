cask "descript" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "41.1.2-release.20220617.29"

  if Hardware::CPU.intel?
    sha256 "b48bdd9f96dfe01b4a04428265b37b918c5d976bc265806aac0aeda2cd9a24d5"
  else
    sha256 "53d3518b56e439b599b8e7afa019852020d1a64bb1c5a25660c99997f84d9053"
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
