cask "loom" do
  arch arm: "-arm64"

  version "0.275.1"
  sha256 arm:   "82d61ea353df8e6052c8c291dba55e51b4320ef76db9bdc208586cffe91220e1",
         intel: "7149d966b3770205149995270b3e0d49bb743ea0f709418d187742d26859d449"

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
