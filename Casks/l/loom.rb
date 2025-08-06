cask "loom" do
  arch arm: "-arm64"

  version "0.308.0"
  sha256 arm:   "8f114a3839f2e363e957b3b7e6d2c73acc970946e6afdcccb97ecfe9765159b9",
         intel: "c0d23e841772fd2e0c09d86e2ae691b8c32d0004063c43174e2b990eef189028"

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
