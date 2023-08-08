cask "loom" do
  arch arm: "-arm64"

  version "0.165.0"
  sha256 arm:   "c26b76b6718a686de2e4b8c2a9e1a9baaf38c67ad635e4be1b1342bd526956ad",
         intel: "29c2f5106dd98c68c400137f8d344a59751504b5b890132e21a00fbee1af17a0"

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
