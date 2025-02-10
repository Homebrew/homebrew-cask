cask "loom" do
  arch arm: "-arm64"

  version "0.275.0"
  sha256 arm:   "a39bdd2bc1e71f9136479148f9a0c2826ccbf14f7860c218d22f3224a3ad4c1b",
         intel: "35c07f95a777093ff2e127bf5ef641db6540e4dce5333f7605291db90a8973de"

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
