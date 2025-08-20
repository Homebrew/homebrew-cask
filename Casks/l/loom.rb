cask "loom" do
  arch arm: "-arm64"

  version "0.312.0"
  sha256 arm:   "3fb058a5771821c23e96a2dd53451a84a4f10abc0c3a1bc03ddb200723049ffb",
         intel: "94f0fa6d0ac8faa7a9f25b2a58c36ca5601f1d2f9967a3c9f04d422f38a9e2ae"

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
