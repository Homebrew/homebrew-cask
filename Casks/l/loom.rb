cask "loom" do
  arch arm: "-arm64"

  version "0.274.1"
  sha256 arm:   "aca18179c024d5eb943d098c305f94022c9ada45b99f8483a29d24deb40f40f6",
         intel: "d56ad8edd5ae8eca010068f6792120df9304bf9cbd2499e53927b4896a39ae81"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
