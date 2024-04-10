cask "loom" do
  arch arm: "-arm64"

  version "0.217.0"
  sha256 arm:   "590c9bb8ec4de1f841b788a083f27b40f796d0a10b189e51ca8f95d4596984e3",
         intel: "50eab40ca2a71ecaacde1e0a41759208d5d12dadb67d6944367440147e89fbdc"

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
