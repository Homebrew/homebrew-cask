cask "descript" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "44.1.0-release.20220723.1"

  if Hardware::CPU.intel?
    sha256 "da8beec19cc30d5b3de84e8cb4f818b18db0a72a28d9fe25833fc09d79804896"
  else
    sha256 "d7d1854b5ac3b39fb5aa4a1f70252228945c5d3bd1a6f8c0ffd37f30b96e665b"
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
