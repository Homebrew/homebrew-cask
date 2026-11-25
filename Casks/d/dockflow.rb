cask "dockflow" do
  version "1.97"
  sha256 "4744d35bc9effa922010773eaf124f3bb079b79e4c269290fa1b2327123fecb1"

  url "https://github.com/AppitStudio/dock-flow-updates/releases/download/v#{version}/DockFlow.dmg"
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
    "~/Library/Caches/com.appit.DockFlow",
    "~/Library/Group Containers/com.appit.DockFlowGroup",
    "~/Library/Preferences/com.appit.DockFlow.licensing-admission.plist",
    "~/Library/Preferences/com.appit.DockFlow.lifecycle.plist",
    "~/Library/Preferences/com.appit.DockFlow.plist",
    "~/Library/Preferences/com.appit.DockFlowHelper.plist",
    "~/Library/Saved Application State/com.appit.DockFlow.savedState",
  ]
end
