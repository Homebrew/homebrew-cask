cask "loom" do
  arch arm: "-arm64"

  version "0.309.2"
  sha256 arm:   "c8c5cae37e8176578ab2eac25157696a79dc5e8909286f05b39c406f9ec98cc5",
         intel: "1ae140c813fcb46d1b927e3a48a3eae6ca9278373557be56ceca1025865a5e43"

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
