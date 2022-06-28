cask "descript" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "42.0.0-release.20220617.28"

  if Hardware::CPU.intel?
    sha256 "8d1f10305ce25e987d82b793e22f5c4064fd1d132f71f7e8f61e1c14a98d7755"
  else
    sha256 "a94288abea73d7a71e6334bc90480b3d25d33166d57894663bf38c72a57ce6ce"
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
