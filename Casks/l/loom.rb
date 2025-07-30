cask "loom" do
  arch arm: "-arm64"

  version "0.306.0"
  sha256 arm:   "cf463eb55af918a96dac11090e7148dfc405881baca85dd27717de66fe6ed2cd",
         intel: "08eefc6288e67464c7756e979ca230f683dccff154bba529ae582a4f78107c09"

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
