cask "loom" do
  arch arm: "-arm64"

  version "0.268.0"
  sha256 arm:   "ed4dcff15142ed1791d39e76b153627e4fe3f436e903bed5893e80e7a35e1473",
         intel: "39f0a788c206450cd3b17afa4e7d9f8f55934a86b696c412f2bf3eac7fcd0921"

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
