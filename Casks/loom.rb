cask "loom" do
  arch arm: "-arm64"

  version "0.159.5"
  sha256 arm:   "e4e26f7c16e66d39f806b06316379e1eec168835e10ed85fa8beb75a5eb8a6c5",
         intel: "b5d9b93abff813c814fe0ea4958f31645709ff13106f331d841f41d742d1ece4"

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
