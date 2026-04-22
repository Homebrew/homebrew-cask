cask "loom" do
  arch arm: "-arm64"

  version "0.345.3"
  sha256 arm:   "28a85f0afd48353d0ac8763f336e8354be207454fbc8b46a34824c549cb7d34d",
         intel: "f24526e0bf302633d0787921f037bca9dea14544aed1db77464131ed249437b7"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
