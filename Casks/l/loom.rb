cask "loom" do
  arch arm: "-arm64"

  version "0.296.8"
  sha256 arm:   "b235329ea76c42a7c1b42e4977af8f7a0665444b12fdb193803028a7fe611514",
         intel: "18487139f74ec12e2baa5b45c3aa8938d7d867f932a39d168e1c8093e5332811"

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
