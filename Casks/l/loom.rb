cask "loom" do
  arch arm: "-arm64"

  version "0.336.4"
  sha256 arm:   "736c13e9499c1d4d25407d3a7f06916558469aedbd29446974bd48f02819c01e",
         intel: "a5c2e70ac9a9dbc20923e4ed2cfb1bb4de3d5caa00eea68d3964a5308edde099"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
