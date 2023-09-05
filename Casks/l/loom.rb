cask "loom" do
  arch arm: "-arm64"

  version "0.171.3"
  sha256 arm:   "410fbac079b703510d647203389ae41263fa096e8f9053053e07fa465a305942",
         intel: "c67e453b66bcb119316c3045bd90bce5f4b9e822b0e6e0d43a78b24db0d65573"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
