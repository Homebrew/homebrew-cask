cask "loom" do
  arch arm: "-arm64"

  version "0.197.0"
  sha256 arm:   "5edfdcbc3caef0a1f5fd711a27deabc44c698fcb8edbeef619432ce2339e1690",
         intel: "146ba2fbc87ce09d34b88f97457544250522dfd6855683148b43669d23e7b6f4"

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
