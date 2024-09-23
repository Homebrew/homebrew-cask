cask "loom" do
  arch arm: "-arm64"

  version "0.254.2"
  sha256 arm:   "38683086d236fcffea6782696736741c04e0e06e3aa8e0d4df2e259f9df06513",
         intel: "50d314c32cc0940c6fe159e5e574b237abf29df01e2d71a8c9b422f776fa1787"

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
