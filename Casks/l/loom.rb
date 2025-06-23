cask "loom" do
  arch arm: "-arm64"

  version "0.297.2"
  sha256 arm:   "1e4ed6e148313b9c26e4df29ea78177a4c80d10cddca68552d0532eae370de41",
         intel: "82d4e7812a1b6e0cda942ad45dc67185d3872b157acf0773c35c4fb10208f110"

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
