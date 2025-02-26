cask "loom" do
  arch arm: "-arm64"

  version "0.278.0"
  sha256 arm:   "b19158eb8dbf002e2d673b2fb2988e412a6e17f24984930b42a01cecb817db57",
         intel: "8fbb05c58c766effe6a48c2b925034feaa42440ffe15f186430d37866e3cef80"

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
