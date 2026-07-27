cask "loom" do
  arch arm: "-arm64"

  version "0.364.1"
  sha256 arm:   "a8e3d14a90715ddb7ccfd1a941c321a93940637a054944684dea88e4a05e4cf7",
         intel: "d5633e16d8f7e4c2d4b49adaeb1ff45b4b8ba997b3d473e01cdd986626cea627"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
