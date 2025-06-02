cask "loom" do
  arch arm: "-arm64"

  version "0.294.2"
  sha256 arm:   "58374a9dc028e33d46e897c068568cd4928cbad744f93a5a8f2317e3261d82d7",
         intel: "de085ca0e8ab1a615550a4b38cfe1f6fa2074058d4e54fbcbaf9eb9f8f9185a8"

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
