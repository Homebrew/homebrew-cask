cask "loom" do
  arch arm: "-arm64"

  version "0.318.3"
  sha256 arm:   "ee1b827c19d8f9e262a2930f16ccea59c9a8f09e18e59be0dca1229fd4df4c33",
         intel: "9891fe03d9e2ede43789bc5a2169db4ef30ca457cfb081c80adca6160ae4cd63"

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
