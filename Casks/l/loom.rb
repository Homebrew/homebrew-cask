cask "loom" do
  arch arm: "-arm64"

  version "0.353.3"
  sha256 arm:   "c165634d580e8069e0f282ca5f26b2516c8a28f08b7e76f3fe0ac31a1f2b3eea",
         intel: "da12a6212cd2a108c19777e7d8db6ab06e34167eecd3ac96ed3b9b3566386cb1"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
