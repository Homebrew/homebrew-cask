cask "loom" do
  arch arm: "-arm64"

  version "0.244.0"
  sha256 arm:   "e47b8dbceb5ad8ea0d969156a4f0a8c55309dd17ff9260bb91501eb7270fdc1b",
         intel: "c8e875ae4159b5b03b3bb1b2838a2bbfebef826be95dda81a51d34c71414f912"

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
