cask "loom" do
  arch arm: "-arm64"

  version "0.284.0"
  sha256 arm:   "a0d4574a9aa628c2def3e0b0e1996a11096a8d36b93276ad866e5abb56149739",
         intel: "df1603188f8648b9a0b209b128c4045f6da88d55648368d76a344b8902eab592"

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
