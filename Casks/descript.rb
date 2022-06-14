cask "descript" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "41.1.0-release.20220613.6"

  if Hardware::CPU.intel?
    sha256 "93793c756b704d5bfc1cf782e70cf7e402c1183d5d8ab4e128bc9a9a8a57fa89"
  else
    sha256 "4ae7714ed4eb80678b910c0b050626bde46a64c0e32d50c1c8c6082ad6441f99"
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
