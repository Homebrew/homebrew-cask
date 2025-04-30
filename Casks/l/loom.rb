cask "loom" do
  arch arm: "-arm64"

  version "0.289.0"
  sha256 arm:   "f1e7e5bba6baf715ad033c38815a027784ad66d19d79caa25e701fc18c420ba8",
         intel: "c4258fafaac47540eb462990bb5ed24a38b8c0ac18172f3ddc28bd76b31691d0"

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
