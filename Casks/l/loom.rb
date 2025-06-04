cask "loom" do
  arch arm: "-arm64"

  version "0.295.0"
  sha256 arm:   "b0a3e69d54dc5c857482bf49dbdf22eb247732efc14feb60866baef91aa782db",
         intel: "65e30606fb4bdf0bec2db89acfa2a99e2602ce604d9407447c89baafbee80a06"

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
