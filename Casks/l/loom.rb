cask "loom" do
  arch arm: "-arm64"

  version "0.220.1"
  sha256 arm:   "a0766e61e141643116a9e2a58f2a6358e2245fa2b488c9c9694aa8dddd690905",
         intel: "988fec1bf61e320efa8e016d7853bb46632ff1fc9561f045b66f291ae30bd58d"

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
