cask "loom" do
  arch arm: "-arm64"

  version "0.243.3"
  sha256 arm:   "edc3643d0bc19dbc8fe90135ef13768cf54220fe8bc00474748609a7f8ad1a2f",
         intel: "3d033d4b73f3bed7c002cff5d6d3b8a152e372d6550ac98abe4380c3ce51d573"

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
