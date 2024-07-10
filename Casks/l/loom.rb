cask "loom" do
  arch arm: "-arm64"

  version "0.239.0"
  sha256 arm:   "85ec4ec0b9bba0ea4f5a70d11625834c8f085e1c05afcd32222dc72162bc45f1",
         intel: "2e8764b4b49892c95b24ad969ef8908d89e31e0d57b85ce72a31ea05e8923607"

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
