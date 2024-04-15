cask "loom" do
  arch arm: "-arm64"

  version "0.218.2"
  sha256 arm:   "80a4d0a995b106c8db9790bae59ed74ffe2f4d3fdaa385e81d37e2d066bbd13e",
         intel: "a911354a78d6f14c65945de474e35e7aebcc1381983a6518457a2373fcf592a2"

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
