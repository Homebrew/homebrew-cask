cask "loom" do
  arch arm: "-arm64"

  version "0.266.1"
  sha256 arm:   "1cfb91e9634920dc1b1f3813fb191930cf5a36cf2f34d616c3c3ee769b2a44a4",
         intel: "317b4d8eb667acab012a75f9d800e87b2d9eba8e2ac6e643c146a45c9ca8fc31"

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
