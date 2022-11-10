cask "loom" do
  arch arm: "-arm64"

  version "0.145.0"
  sha256 arm:   "f1ab8fa5a1f9d5114fc7cd9fce17bcbd45db4a3043b8999fb9fae6205acf356a",
         intel: "f2b292e8913e8236a38077bc05303d3a225db2f063d5ab7f9810aafc3414fecf"

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
