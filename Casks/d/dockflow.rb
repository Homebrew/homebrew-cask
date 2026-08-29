cask "dockflow" do
  version "1.77"
  sha256 "f0743c055dedc0b03ba09609b224a96c4514a6aedd05d0418ae5dd2303ec9c64"

  url "https://github.com/AppitStudio/dock-flow-updates/releases/download/v#{version}/DockFlow.dmg",
      verified: "github.com/AppitStudio/"
  name "DockFlow"
  desc "Manage Dock presets and switch between them instantly"
  homepage "https://dockflow.appitstudio.com/"

  livecheck do
    url "https://raw.githubusercontent.com/AppitStudio/dock-flow-updates/refs/heads/main/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

  app "DockFlow.app"

  uninstall quit: "com.appit.DockFlow"

  zap trash: [
    "~/Library/Application Support/DockFlow",
    "~/Library/Group Containers/com.appit.DockFlowGroup",
    "~/Library/Preferences/com.appit.DockFlow.plist",
    "~/Library/Preferences/com.appit.DockFlowHelper.plist",
    "~/Library/Saved Application State/com.appit.DockFlow.savedState",
  ]
end
