cask "loom" do
  arch arm: "-arm64"

  version "0.299.0"
  sha256 arm:   "db91f2408c47780a2326fb922cc5ba22aa236c5b896e1ea726532dbdecd76e82",
         intel: "248bee1df38bc27153a050f0d834c4aa2587947fffc7b87e29d9656f9c7ab4a9"

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
