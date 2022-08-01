cask "descript" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "44.2.0-release.20220726.11"

  if Hardware::CPU.intel?
    sha256 "1ee2ee176ce7409010e3a73011334bb31db57539a78c429781467f395be36b8d"
  else
    sha256 "6f44232f49e9a5ce04ba9711b4857e6616538faf2d253fc3aae3a6d97f414151"
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
