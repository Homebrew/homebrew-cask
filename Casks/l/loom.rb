cask "loom" do
  arch arm: "-arm64"

  version "0.188.0"
  sha256 arm:   "b213cde0a8b23a52cfe7f06ca88edb4d2831ae426ee69e4bf93f089aa229f64e",
         intel: "92ef864808277a247c9787644114d05fad294688995c90063342745461119407"

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
