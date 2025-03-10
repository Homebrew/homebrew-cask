cask "loom" do
  arch arm: "-arm64"

  version "0.281.0"
  sha256 arm:   "e14c100944877b6d5a198a79387600010b7404c88665eb372596dedf7846133b",
         intel: "9cccc58b54f4b40a5610fa760a23d0f3fd5261a5bc72fe2a5b01eb7af1d679f6"

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
