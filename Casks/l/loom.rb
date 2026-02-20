cask "loom" do
  arch arm: "-arm64"

  version "0.335.1"
  sha256 arm:   "098c30366c1a5a28170fdefb917f3a86040764c502d960672b42baa7bc565871",
         intel: "5d8330562ec1c91acd4e47490a529fa2cfd5bf2d9cff3c648e1cc9a343303415"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
