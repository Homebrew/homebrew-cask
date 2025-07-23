cask "loom" do
  arch arm: "-arm64"

  version "0.304.0"
  sha256 arm:   "9ad32d4d1ef0ed9ae1f3b703f0919b833064b5249b93fde7ec857c821db738fd",
         intel: "1b6f0f4dd97946d644b8f8cb7a0c786c38c0993b32862dd71f8f0d7e7c286d40"

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
