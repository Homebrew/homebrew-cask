cask "loom" do
  arch arm: "-arm64"

  version "0.338.4"
  sha256 arm:   "5effdee6d0bde9f74226205b582fd038b79094d1c0661783f1a7301646ded6be",
         intel: "efa394bddd4884098ffe3892dad90dfbf231a7f379cee49ad06dfa08051be61d"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
