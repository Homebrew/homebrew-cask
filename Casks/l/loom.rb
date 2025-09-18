cask "loom" do
  arch arm: "-arm64"

  version "0.317.3"
  sha256 arm:   "ca42b78c078dcca4cd31fe7904f7eb953be435463e4d7bb07dc49dba5ba1c770",
         intel: "1ad83f1e7f9a382a7f423c26a4e26b2343abae4655aeb1e1e66bfee3adef98e1"

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
