cask "loom" do
  arch arm: "-arm64"

  version "0.269.3"
  sha256 arm:   "8d3c46c89fa05b7ba6f559f73428fd1a9029c0b66d74032b58315f2091d69a6e",
         intel: "cff044c4c9f6fe9f831c228a7eb1769e56713d6dc1c7af4105bbf814a180c6cc"

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
