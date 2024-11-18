cask "loom" do
  arch arm: "-arm64"

  version "0.263.1"
  sha256 arm:   "cb14efda732f224fb033d20e4096201c328a15f97deb24e10acf486e41bbfa59",
         intel: "d9abea49d4266692c1adbe6d673a495b9e13f0e474cc42770bf73ae146b4bf8c"

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
