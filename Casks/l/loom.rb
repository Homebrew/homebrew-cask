cask "loom" do
  arch arm: "-arm64"

  version "0.279.1"
  sha256 arm:   "aaa034bb099cc66220153432e747dc73f2447f90201489e9779d76ea513ac8d1",
         intel: "94c0a1bdd38b5995e7477e8d0a2799cd2781d4bd9bad9380547af5e08d9aaabd"

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
