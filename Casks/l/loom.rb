cask "loom" do
  arch arm: "-arm64"

  version "0.322.0"
  sha256 arm:   "4c0b17f2ad2b694a19177ea290e81691fa1d0d79f7c921b93cb05e6e881b69e3",
         intel: "4a0f15014f506271f1e847881e5710e47a992bedc5a0d093dd232776a8e078aa"

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
