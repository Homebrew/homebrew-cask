cask "loom" do
  arch arm: "-arm64"

  version "0.149.1"
  sha256 arm:   "575fd144f1003d778d5f851b4296f4ee47704dec9a8204f2f382e73c7c4701fa",
         intel: "2c37dc5b37640b07aa52adfd4d288e61ef7fa33808f3ba986b5355940c0134df"

  url "https://cdn.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/loom.desktop.packages/loom-inc-production/desktop-packages/latest-mac.yml"
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
