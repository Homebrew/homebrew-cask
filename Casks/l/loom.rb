cask "loom" do
  arch arm: "-arm64"

  version "0.241.0"
  sha256 arm:   "2701f86f33c1e3a3e53a0355e2d83dab837b40e69b660605f1ec3f7489af524b",
         intel: "b18c292100d632c793ca652131767aef6e440bcc1a2e48feeacfac9a434933e9"

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
