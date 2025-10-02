cask "loom" do
  arch arm: "-arm64"

  version "0.319.1"
  sha256 arm:   "1ea56120dec37e2148580a971bc336571581483547f8a3bc4abf7fa536e7f04f",
         intel: "d853bcf59329ef45a38252a4452dad7ac9ee7f0b4294b34a3f5aeaec230f088f"

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
