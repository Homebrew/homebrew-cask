cask "loom" do
  arch arm: "-arm64"

  version "0.181.2"
  sha256 arm:   "b388a9c44a29426d53adaaef2495001aa64b94360883dfbcbfb70158e5c9dcf6",
         intel: "c72fddb8dcee7821150aa922889dc5764df81d2a2d3ae448ad3bec1e69611813"

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
