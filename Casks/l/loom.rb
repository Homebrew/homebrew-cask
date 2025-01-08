cask "loom" do
  arch arm: "-arm64"

  version "0.270.0"
  sha256 arm:   "a528cd51a8c92d1a81abc1db688155bae9654208d1e5375977f206ff082b2c52",
         intel: "dba518efb66bf9884380f3bd4d15802d2596611fd785a0ac7d516bfb57c258cf"

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
