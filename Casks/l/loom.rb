cask "loom" do
  arch arm: "-arm64"

  version "0.292.0"
  sha256 arm:   "3ae66a42b71fdda5d2b56f866dcf289874c9945180bf93c699e35a432245c9b0",
         intel: "779680d66f32a7746ef9286c95ac401485408f4d182a51ffe0b26b7ba05a9ab3"

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
