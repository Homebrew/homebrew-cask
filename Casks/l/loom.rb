cask "loom" do
  arch arm: "-arm64"

  version "0.190.0"
  sha256 arm:   "dc031f9d1c050038d095e88aebf25a72cb6d7cc40a9cb08a38133e2d41b16ab1",
         intel: "9bcab3e6a4b5d61e2cec148eb7edfa156294f959ad592989531f323eae5b4a72"

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
