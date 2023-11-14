cask "loom" do
  arch arm: "-arm64"

  version "0.186.0"
  sha256 arm:   "1ab0a108edc537fbaa707d72a5b07de1c38b2ea05a50cc8e370f691f2cb7934e",
         intel: "8462fa66d8104d79916e7d4f29a4f891a7cebad873a518183437901d65650cd6"

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
