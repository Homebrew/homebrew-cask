cask "loom" do
  arch arm: "-arm64"

  version "0.311.0"
  sha256 arm:   "82354a6a7582ea4957d83491192ca7da805d71502a2fd0b3fc914a2850b116f5",
         intel: "d8488aa07ce39304f8f6b4698461d557bbdab98832c549a615b78375c9bea80b"

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
