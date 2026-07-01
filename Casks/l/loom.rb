cask "loom" do
  arch arm: "-arm64"

  version "0.358.1"
  sha256 arm:   "a47262cca7fef4b082427f78406cc6d8ed8b8fb7f8e513bd55346620457f7078",
         intel: "bb9efa698359fb34c2949f81887036746ed1f6886422e4ecb7f3aa920288f108"

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
