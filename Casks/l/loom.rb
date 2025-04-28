cask "loom" do
  arch arm: "-arm64"

  version "0.288.0"
  sha256 arm:   "b1cff182f096aaf46b3810898f9e756a95bd4f3351bbc562de634e52af385554",
         intel: "83c391dab037c1da73db8d2d2827b84643d6db6cbad4adfdc573ad5aca3fc3db"

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
