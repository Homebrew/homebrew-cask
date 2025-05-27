cask "loom" do
  arch arm: "-arm64"

  version "0.293.6"
  sha256 arm:   "de97bdbbf989039f4ff7a71c62b19daed3641471dae27c720cb634b2b48aca83",
         intel: "8b57d0d6b756ad6d532141434fe92ccd3e0a7e6f285e3c51f8304800cad33c81"

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
