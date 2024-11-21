cask "loom" do
  arch arm: "-arm64"

  version "0.263.3"
  sha256 arm:   "ab5b401f642a7daf567a5bd25fc3439ba6327acb95ea1f9f09047a0158dff52f",
         intel: "0be7967dffe29ad5640e0cb859a924564861308223706e105c4176d48ff5c64a"

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
