cask "loom" do
  arch arm: "-arm64"

  version "0.207.0"
  sha256 arm:   "4cb7c4a3137b59a15938201914d46fd53a4a86713149ae768ea1964399f263bb",
         intel: "9b4d3186c3de8b6ceb9fa567bcca5fca2e32259af08a6b27d8198498db350222"

  url "https://packages.loom.com/desktop-packages/Loom-#{version}#{arch}.dmg"
  name "Loom"
  desc "Screen and video recording software"
  homepage "https://www.loom.com/"

  livecheck do
    url "https://packages.loom.com/desktop-packages/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true

  app "Loom.app"

  uninstall login_item: "Loom"

  zap trash: [
    "~/Library/Application Support/Loom",
    "~/Library/Logs/Loom",
    "~/Library/Preferences/com.loom.desktop.plist",
    "~/Library/Saved Application State/com.loom.desktop.savedState",
  ]
end
