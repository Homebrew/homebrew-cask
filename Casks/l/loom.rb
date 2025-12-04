cask "loom" do
  arch arm: "-arm64"

  version "0.325.2"
  sha256 arm:   "ecd9698a7b31cbdfaf02a44ac0ae6351d4cefad43b857a669cbe13422e9a7879",
         intel: "350064ffb83ed659e2807b6fc2933d975f9c0ae44aba0f779e8e03264c5e20a4"

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
