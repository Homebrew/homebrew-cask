cask "loom" do
  arch arm: "-arm64"

  version "0.285.4"
  sha256 arm:   "37598fb6454aa797901e4d599dc91bf10b2ee623ec38ec5e1ee9c3551954cfca",
         intel: "230fba6a46bb7de406a81b9149066635a2053cbf06d21e8d35d16d62e3ed0fab"

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
