cask "loom" do
  arch arm: "-arm64"

  version "0.293.0"
  sha256 arm:   "f36d2c617c91b01a50d1bb6fca72179b8ff6b10a32e979fc57e0e0ce175138e1",
         intel: "d70c6a0c1dac6cd3d2b5d4188aa48ef19f3aa790bdb427d028230622c9c63c55"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
