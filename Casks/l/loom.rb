cask "loom" do
  arch arm: "-arm64"

  version "0.305.0"
  sha256 arm:   "793c9130e33b146be7b4ec72a8382c1d35cc4d3ee07830bb26d0131be6d10179",
         intel: "20fb673c62a5f3312ba29fb341b0f1d7937b6bf14946aef9febda2843eb89523"

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
