cask "loom" do
  arch arm: "-arm64"

  version "0.147.2"
  sha256 arm:   "32957a3cf141eb6562e27d89d49de5b97671df3c0a35339a692a2dd4f896bf29",
         intel: "bb75f1fba4ffafc4111c172cdd0ee91d56aaf872022ee0cb6ce03b609a169da4"

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
