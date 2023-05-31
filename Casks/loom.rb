cask "loom" do
  arch arm: "-arm64"

  version "0.163.0"
  sha256 arm:   "eadf721ed35d1a5bed9335100872b4ac740a7f54ec4ea1405237ccda67764c31",
         intel: "97a7480f69a9662881f80e48366a74eaeb7e018eaac85749f4ae7df37c8a85d9"

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
