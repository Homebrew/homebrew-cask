cask "loom" do
  arch arm: "-arm64"

  version "0.251.1"
  sha256 arm:   "0d12df56321afb5748f79106d00d0bb2b2063a90824e3a950d68ba8c7a1f8fc8",
         intel: "69b7d9dd97cc3d455ba49dde7eb3b7af3cbcc878d45df8c89fa4c70766705392"

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
