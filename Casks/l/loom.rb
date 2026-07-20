cask "loom" do
  arch arm: "-arm64"

  version "0.362.1"
  sha256 arm:   "a092470d514bb84fde2a77ec4fa76e4b4543f223d3c4f8fcfcec9df4b9d0d170",
         intel: "d199feb6d102b10c98fc349d3747455f4d5b96aedb3a42584ea1d1a3cbf836fe"

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
