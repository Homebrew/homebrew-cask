cask "loom" do
  arch arm: "-arm64"

  version "0.286.2"
  sha256 arm:   "57f7890298a01547c28f5882296c732beabc90db01cb1acc73f57a5520259518",
         intel: "ff3969c78742e5031b53fe4bd99fc895306570f31246bc24b088d3513a7866ec"

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
