cask "loom" do
  arch arm: "-arm64"

  version "0.208.0"
  sha256 arm:   "5d40bb8df6269b1de1ee66b5e4dae744c3e9b83895e4da28cfd1c2f5ac5ad192",
         intel: "03680e96cefbe7fe1daa7f94edf14fb22ac07dbb586df5aefdaeca323a44e507"

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
