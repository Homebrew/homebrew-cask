cask "loom" do
  arch arm: "-arm64"

  version "0.307.1"
  sha256 arm:   "ce328ed2eb273d1518c6e889f0742b796e269b79b772842b0662a62d8fc0d459",
         intel: "0be1cf185154c607140c0d38c20d9f30f9b10d987a0f4458b5a14a51a78335c4"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
