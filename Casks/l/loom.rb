cask "loom" do
  arch arm: "-arm64"

  version "0.271.0"
  sha256 arm:   "b76ae79ec7b7218624db0a3e4d6d42246f83e423bc37ec7fdc952134054c1f81",
         intel: "7afbd9da68c71595786c56600f42f4330feb6e3c46c18c27d8d0680001e53308"

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
