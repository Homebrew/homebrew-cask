cask "loom" do
  arch arm: "-arm64"

  version "0.201.1"
  sha256 arm:   "ffa5207a5611c790d0258e70bf09bc7f671082cc19544907fc88080d8ecdc1e2",
         intel: "f14467927d2123216196ae6eacc1e13cd89982f2eaebd789f2f783d0b60de04a"

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
